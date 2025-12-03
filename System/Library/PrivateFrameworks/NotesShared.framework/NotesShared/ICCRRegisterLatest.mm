@interface ICCRRegisterLatest
- (BOOL)isEqualContents:(id)contents;
- (ICCRRegisterLatest)initWithContents:(id)contents document:(id)document;
- (ICCRRegisterLatest)initWithContents:(id)contents timestamp:(id)timestamp document:(id)document;
- (ICCRRegisterLatest)initWithICCRCoder:(id)coder;
- (ICCRRegisterLatest)initWithProtobufRegisterLatest:(const void *)latest decoder:(id)decoder;
- (id)deltaSince:(id)since in:(id)in;
- (id)description;
- (void)encodeIntoProtobufRegisterLatest:(void *)latest coder:(id)coder;
- (void)encodeWithICCRCoder:(id)coder;
- (void)mergeWith:(id)with;
- (void)mergeWithRegisterLatest:(id)latest;
- (void)realizeLocalChangesIn:(id)in;
- (void)setContents:(id)contents;
- (void)setDocument:(id)document;
- (void)walkGraph:(id)graph;
@end

@implementation ICCRRegisterLatest

- (ICCRRegisterLatest)initWithContents:(id)contents document:(id)document
{
  contentsCopy = contents;
  documentCopy = document;
  v8 = [ICCRTimestamp alloc];
  cR_unserialized = [MEMORY[0x277CCAD78] CR_unserialized];
  v10 = [(ICCRTimestamp *)v8 initWithReplica:cR_unserialized andCounter:0];

  v11 = [(ICCRRegisterLatest *)self initWithContents:contentsCopy timestamp:v10 document:documentCopy];
  return v11;
}

- (ICCRRegisterLatest)initWithContents:(id)contents timestamp:(id)timestamp document:(id)document
{
  contentsCopy = contents;
  timestampCopy = timestamp;
  v14.receiver = self;
  v14.super_class = ICCRRegisterLatest;
  v11 = [(ICCRRegister *)&v14 initWithDocument:document];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_timestamp, timestamp);
    objc_storeStrong(&v12->_contents, contents);
  }

  return v12;
}

- (void)encodeWithICCRCoder:(id)coder
{
  coderCopy = coder;
  currentDocumentObjectForEncoding = [coderCopy currentDocumentObjectForEncoding];
  v5 = currentDocumentObjectForEncoding;
  if (*(currentDocumentObjectForEncoding + 48) != 1)
  {
    CRDT::Document_DocObject::clear_contents(currentDocumentObjectForEncoding);
    *(v5 + 48) = 1;
    operator new();
  }

  [(ICCRRegisterLatest *)self encodeIntoProtobufRegisterLatest:*(currentDocumentObjectForEncoding + 40) coder:coderCopy];
}

- (ICCRRegisterLatest)initWithICCRCoder:(id)coder
{
  coderCopy = coder;
  currentDocumentObjectForDecoding = [coderCopy currentDocumentObjectForDecoding];
  if (*(currentDocumentObjectForDecoding + 48) == 1)
  {
    v6 = [(ICCRRegisterLatest *)self initWithProtobufRegisterLatest:*(currentDocumentObjectForDecoding + 40) decoder:coderCopy];
  }

  else
  {
    document = [coderCopy document];
    v6 = [(ICCRRegisterLatest *)self initWithContents:0 document:document];
  }

  return v6;
}

- (ICCRRegisterLatest)initWithProtobufRegisterLatest:(const void *)latest decoder:(id)decoder
{
  decoderCopy = decoder;
  v7 = decoderCopy;
  v8 = *(latest + 8);
  if ((v8 & 2) != 0)
  {
    v10 = *(latest + 6);
    if (!v10)
    {
      v10 = *(CRDT::RegisterLatest::default_instance(decoderCopy) + 48);
    }

    v11 = [(CRDT::RegisterLatest *)v7 decodeObjectForProtobufObjectID:v10];
    v8 = *(latest + 8);
    v9 = v11;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v16 = [ICCRTimestamp alloc];
    v17 = v16;
    v18 = *(latest + 5);
    if (!v18)
    {
      v18 = *(CRDT::RegisterLatest::default_instance(v16) + 40);
    }

    v15 = [(ICCRTimestamp *)v17 initWithProtobufTimestamp:v18 decoder:v7];
  }

  else
  {
    v12 = [ICCRTimestamp alloc];
    document = [(CRDT::RegisterLatest *)v7 document];
    replica = [document replica];
    v15 = [(ICCRTimestamp *)v12 initWithReplica:replica andCounter:0];
  }

  document2 = [(CRDT::RegisterLatest *)v7 document];
  v20 = [(ICCRRegisterLatest *)self initWithContents:v9 timestamp:v15 document:document2];

  return v20;
}

- (void)encodeIntoProtobufRegisterLatest:(void *)latest coder:(id)coder
{
  coderCopy = coder;
  timestamp = [(ICCRRegisterLatest *)self timestamp];
  *(latest + 8) |= 1u;
  v7 = *(latest + 5);
  if (!v7)
  {
    operator new();
  }

  [timestamp encodeIntoProtobufTimestamp:v7 coder:coderCopy];

  contents = [(ICCRRegisterLatest *)self contents];

  if (contents)
  {
    contents2 = [(ICCRRegisterLatest *)self contents];
    v10 = [contents2 conformsToProtocol:&unk_282759DF8];

    if (v10)
    {
      contents3 = [(ICCRRegisterLatest *)self contents];
      *(latest + 8) |= 2u;
      v12 = *(latest + 6);
      if (!v12)
      {
        operator new();
      }

      [coderCopy encodeObject:contents3 forObjectID:v12];
    }
  }
}

- (void)setContents:(id)contents
{
  contentsCopy = contents;
  if (self->_contents != contentsCopy)
  {
    v17 = contentsCopy;
    objc_storeStrong(&self->_contents, contents);
    timestamp = [(ICCRRegisterLatest *)self timestamp];
    replica = [timestamp replica];
    cR_unserialized = [MEMORY[0x277CCAD78] CR_unserialized];

    if (replica != cR_unserialized)
    {
      document = [(ICCRRegister *)self document];
      replicaClock = [document replicaClock];

      timestamp2 = [(ICCRRegisterLatest *)self timestamp];
      counter = [timestamp2 counter];

      if (replicaClock > counter)
      {
        counter = replicaClock;
      }

      v13 = [ICCRTimestamp alloc];
      cR_unserialized2 = [MEMORY[0x277CCAD78] CR_unserialized];
      v15 = [(ICCRTimestamp *)v13 initWithReplica:cR_unserialized2 andCounter:counter + 1];
      [(ICCRRegisterLatest *)self setTimestamp:v15];
    }

    document2 = [(ICCRRegister *)self document];
    [document2 setDocumentFor:v17];

    contentsCopy = v17;
  }
}

- (BOOL)isEqualContents:(id)contents
{
  contentsCopy = contents;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contents = [(ICCRRegisterLatest *)self contents];
    contents2 = [contentsCopy contents];
    if ([contents isEqual:contents2])
    {
      timestamp = [(ICCRRegisterLatest *)self timestamp];
      timestamp2 = [contentsCopy timestamp];
      v9 = [timestamp isEqual:timestamp2];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)realizeLocalChangesIn:(id)in
{
  inCopy = in;
  timestamp = [(ICCRRegisterLatest *)self timestamp];
  replica = [timestamp replica];
  cR_unserialized = [MEMORY[0x277CCAD78] CR_unserialized];

  if (replica == cR_unserialized)
  {
    timestamp2 = [(ICCRRegisterLatest *)self timestamp];
    if ([timestamp2 counter])
    {
      timestamp3 = [(ICCRRegisterLatest *)self timestamp];
      counter = [timestamp3 counter];
    }

    else
    {
      counter = [inCopy replicaClock] + 1;
    }

    v10 = [ICCRTimestamp alloc];
    replica2 = [inCopy replica];
    v12 = [(ICCRTimestamp *)v10 initWithReplica:replica2 andCounter:counter];
    [(ICCRRegisterLatest *)self setTimestamp:v12];

    unserializedReplicaClock = [inCopy unserializedReplicaClock];
    if (counter <= unserializedReplicaClock)
    {
      v14 = unserializedReplicaClock;
    }

    else
    {
      v14 = counter;
    }

    [inCopy setUnserializedReplicaClock:v14];
  }
}

- (void)mergeWith:(id)with
{
  withCopy = with;
  if (withCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Invalid ICCRRegisterLatest merge userInfo:{classes must be equal for merge.", 0}];
      objc_exception_throw(v4);
    }

    [(ICCRRegisterLatest *)self mergeWithRegisterLatest:withCopy];
  }
}

- (void)mergeWithRegisterLatest:(id)latest
{
  latestCopy = latest;
  timestamp = [(ICCRRegisterLatest *)self timestamp];
  timestamp2 = [latestCopy timestamp];
  v6 = [timestamp compare:timestamp2];

  if (v6 == -1)
  {
    contents = [latestCopy contents];
    [(ICCRRegisterLatest *)self setContents:contents];

    timestamp3 = [latestCopy timestamp];
    [(ICCRRegisterLatest *)self setTimestamp:timestamp3];
  }
}

- (void)setDocument:(id)document
{
  documentCopy = document;
  v8.receiver = self;
  v8.super_class = ICCRRegisterLatest;
  [(ICCRRegister *)&v8 setDocument:documentCopy];
  contents = [(ICCRRegisterLatest *)self contents];
  v6 = [documentCopy localObject:contents];
  contents = self->_contents;
  self->_contents = v6;
}

- (id)deltaSince:(id)since in:(id)in
{
  sinceCopy = since;
  inCopy = in;
  timestamp = [(ICCRRegisterLatest *)self timestamp];
  replica = [timestamp replica];
  v10 = [sinceCopy timestampForReplica:replica];
  timestamp2 = [(ICCRRegisterLatest *)self timestamp];
  v12 = [v10 compare:timestamp2];

  if (v12)
  {
    if (v12 == -1)
    {
      v13 = [ICCRRegisterLatest alloc];
      contents = [(ICCRRegisterLatest *)self contents];
      timestamp3 = [(ICCRRegisterLatest *)self timestamp];
      v16 = [(ICCRRegisterLatest *)v13 initWithContents:contents timestamp:timestamp3 document:inCopy];
LABEL_6:
      v19 = v16;

      goto LABEL_8;
    }
  }

  else
  {
    contents2 = [(ICCRRegisterLatest *)self contents];
    contents = [contents2 deltaSince:sinceCopy in:inCopy];

    if (contents)
    {
      v18 = [ICCRRegisterLatest alloc];
      timestamp3 = [(ICCRRegisterLatest *)self timestamp];
      v16 = [(ICCRRegisterLatest *)v18 initWithContents:contents timestamp:timestamp3 document:inCopy];
      goto LABEL_6;
    }
  }

  v19 = 0;
LABEL_8:

  return v19;
}

- (void)walkGraph:(id)graph
{
  graphCopy = graph;
  contents = [(ICCRRegisterLatest *)self contents];
  graphCopy[2](graphCopy, contents);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  timestamp = [(ICCRRegisterLatest *)self timestamp];
  shortDescription = [timestamp shortDescription];
  contents = [(ICCRRegisterLatest *)self contents];
  v9 = [v3 stringWithFormat:@"<%@ %p %@ %@>", v5, self, shortDescription, contents];

  return v9;
}

@end