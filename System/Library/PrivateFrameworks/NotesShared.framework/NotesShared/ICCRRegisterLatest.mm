@interface ICCRRegisterLatest
- (BOOL)isEqualContents:(id)a3;
- (ICCRRegisterLatest)initWithContents:(id)a3 document:(id)a4;
- (ICCRRegisterLatest)initWithContents:(id)a3 timestamp:(id)a4 document:(id)a5;
- (ICCRRegisterLatest)initWithICCRCoder:(id)a3;
- (ICCRRegisterLatest)initWithProtobufRegisterLatest:(const void *)a3 decoder:(id)a4;
- (id)deltaSince:(id)a3 in:(id)a4;
- (id)description;
- (void)encodeIntoProtobufRegisterLatest:(void *)a3 coder:(id)a4;
- (void)encodeWithICCRCoder:(id)a3;
- (void)mergeWith:(id)a3;
- (void)mergeWithRegisterLatest:(id)a3;
- (void)realizeLocalChangesIn:(id)a3;
- (void)setContents:(id)a3;
- (void)setDocument:(id)a3;
- (void)walkGraph:(id)a3;
@end

@implementation ICCRRegisterLatest

- (ICCRRegisterLatest)initWithContents:(id)a3 document:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [ICCRTimestamp alloc];
  v9 = [MEMORY[0x277CCAD78] CR_unserialized];
  v10 = [(ICCRTimestamp *)v8 initWithReplica:v9 andCounter:0];

  v11 = [(ICCRRegisterLatest *)self initWithContents:v6 timestamp:v10 document:v7];
  return v11;
}

- (ICCRRegisterLatest)initWithContents:(id)a3 timestamp:(id)a4 document:(id)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = ICCRRegisterLatest;
  v11 = [(ICCRRegister *)&v14 initWithDocument:a5];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_timestamp, a4);
    objc_storeStrong(&v12->_contents, a3);
  }

  return v12;
}

- (void)encodeWithICCRCoder:(id)a3
{
  v6 = a3;
  v4 = [v6 currentDocumentObjectForEncoding];
  v5 = v4;
  if (*(v4 + 48) != 1)
  {
    CRDT::Document_DocObject::clear_contents(v4);
    *(v5 + 48) = 1;
    operator new();
  }

  [(ICCRRegisterLatest *)self encodeIntoProtobufRegisterLatest:*(v4 + 40) coder:v6];
}

- (ICCRRegisterLatest)initWithICCRCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 currentDocumentObjectForDecoding];
  if (*(v5 + 48) == 1)
  {
    v6 = [(ICCRRegisterLatest *)self initWithProtobufRegisterLatest:*(v5 + 40) decoder:v4];
  }

  else
  {
    v7 = [v4 document];
    v6 = [(ICCRRegisterLatest *)self initWithContents:0 document:v7];
  }

  return v6;
}

- (ICCRRegisterLatest)initWithProtobufRegisterLatest:(const void *)a3 decoder:(id)a4
{
  v6 = a4;
  v7 = v6;
  v8 = *(a3 + 8);
  if ((v8 & 2) != 0)
  {
    v10 = *(a3 + 6);
    if (!v10)
    {
      v10 = *(CRDT::RegisterLatest::default_instance(v6) + 48);
    }

    v11 = [(CRDT::RegisterLatest *)v7 decodeObjectForProtobufObjectID:v10];
    v8 = *(a3 + 8);
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
    v18 = *(a3 + 5);
    if (!v18)
    {
      v18 = *(CRDT::RegisterLatest::default_instance(v16) + 40);
    }

    v15 = [(ICCRTimestamp *)v17 initWithProtobufTimestamp:v18 decoder:v7];
  }

  else
  {
    v12 = [ICCRTimestamp alloc];
    v13 = [(CRDT::RegisterLatest *)v7 document];
    v14 = [v13 replica];
    v15 = [(ICCRTimestamp *)v12 initWithReplica:v14 andCounter:0];
  }

  v19 = [(CRDT::RegisterLatest *)v7 document];
  v20 = [(ICCRRegisterLatest *)self initWithContents:v9 timestamp:v15 document:v19];

  return v20;
}

- (void)encodeIntoProtobufRegisterLatest:(void *)a3 coder:(id)a4
{
  v13 = a4;
  v6 = [(ICCRRegisterLatest *)self timestamp];
  *(a3 + 8) |= 1u;
  v7 = *(a3 + 5);
  if (!v7)
  {
    operator new();
  }

  [v6 encodeIntoProtobufTimestamp:v7 coder:v13];

  v8 = [(ICCRRegisterLatest *)self contents];

  if (v8)
  {
    v9 = [(ICCRRegisterLatest *)self contents];
    v10 = [v9 conformsToProtocol:&unk_282759DF8];

    if (v10)
    {
      v11 = [(ICCRRegisterLatest *)self contents];
      *(a3 + 8) |= 2u;
      v12 = *(a3 + 6);
      if (!v12)
      {
        operator new();
      }

      [v13 encodeObject:v11 forObjectID:v12];
    }
  }
}

- (void)setContents:(id)a3
{
  v5 = a3;
  if (self->_contents != v5)
  {
    v17 = v5;
    objc_storeStrong(&self->_contents, a3);
    v6 = [(ICCRRegisterLatest *)self timestamp];
    v7 = [v6 replica];
    v8 = [MEMORY[0x277CCAD78] CR_unserialized];

    if (v7 != v8)
    {
      v9 = [(ICCRRegister *)self document];
      v10 = [v9 replicaClock];

      v11 = [(ICCRRegisterLatest *)self timestamp];
      v12 = [v11 counter];

      if (v10 > v12)
      {
        v12 = v10;
      }

      v13 = [ICCRTimestamp alloc];
      v14 = [MEMORY[0x277CCAD78] CR_unserialized];
      v15 = [(ICCRTimestamp *)v13 initWithReplica:v14 andCounter:v12 + 1];
      [(ICCRRegisterLatest *)self setTimestamp:v15];
    }

    v16 = [(ICCRRegister *)self document];
    [v16 setDocumentFor:v17];

    v5 = v17;
  }
}

- (BOOL)isEqualContents:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ICCRRegisterLatest *)self contents];
    v6 = [v4 contents];
    if ([v5 isEqual:v6])
    {
      v7 = [(ICCRRegisterLatest *)self timestamp];
      v8 = [v4 timestamp];
      v9 = [v7 isEqual:v8];
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

- (void)realizeLocalChangesIn:(id)a3
{
  v15 = a3;
  v4 = [(ICCRRegisterLatest *)self timestamp];
  v5 = [v4 replica];
  v6 = [MEMORY[0x277CCAD78] CR_unserialized];

  if (v5 == v6)
  {
    v7 = [(ICCRRegisterLatest *)self timestamp];
    if ([v7 counter])
    {
      v8 = [(ICCRRegisterLatest *)self timestamp];
      v9 = [v8 counter];
    }

    else
    {
      v9 = [v15 replicaClock] + 1;
    }

    v10 = [ICCRTimestamp alloc];
    v11 = [v15 replica];
    v12 = [(ICCRTimestamp *)v10 initWithReplica:v11 andCounter:v9];
    [(ICCRRegisterLatest *)self setTimestamp:v12];

    v13 = [v15 unserializedReplicaClock];
    if (v9 <= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v9;
    }

    [v15 setUnserializedReplicaClock:v14];
  }
}

- (void)mergeWith:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Invalid ICCRRegisterLatest merge userInfo:{classes must be equal for merge.", 0}];
      objc_exception_throw(v4);
    }

    [(ICCRRegisterLatest *)self mergeWithRegisterLatest:v5];
  }
}

- (void)mergeWithRegisterLatest:(id)a3
{
  v9 = a3;
  v4 = [(ICCRRegisterLatest *)self timestamp];
  v5 = [v9 timestamp];
  v6 = [v4 compare:v5];

  if (v6 == -1)
  {
    v7 = [v9 contents];
    [(ICCRRegisterLatest *)self setContents:v7];

    v8 = [v9 timestamp];
    [(ICCRRegisterLatest *)self setTimestamp:v8];
  }
}

- (void)setDocument:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICCRRegisterLatest;
  [(ICCRRegister *)&v8 setDocument:v4];
  v5 = [(ICCRRegisterLatest *)self contents];
  v6 = [v4 localObject:v5];
  contents = self->_contents;
  self->_contents = v6;
}

- (id)deltaSince:(id)a3 in:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICCRRegisterLatest *)self timestamp];
  v9 = [v8 replica];
  v10 = [v6 timestampForReplica:v9];
  v11 = [(ICCRRegisterLatest *)self timestamp];
  v12 = [v10 compare:v11];

  if (v12)
  {
    if (v12 == -1)
    {
      v13 = [ICCRRegisterLatest alloc];
      v14 = [(ICCRRegisterLatest *)self contents];
      v15 = [(ICCRRegisterLatest *)self timestamp];
      v16 = [(ICCRRegisterLatest *)v13 initWithContents:v14 timestamp:v15 document:v7];
LABEL_6:
      v19 = v16;

      goto LABEL_8;
    }
  }

  else
  {
    v17 = [(ICCRRegisterLatest *)self contents];
    v14 = [v17 deltaSince:v6 in:v7];

    if (v14)
    {
      v18 = [ICCRRegisterLatest alloc];
      v15 = [(ICCRRegisterLatest *)self timestamp];
      v16 = [(ICCRRegisterLatest *)v18 initWithContents:v14 timestamp:v15 document:v7];
      goto LABEL_6;
    }
  }

  v19 = 0;
LABEL_8:

  return v19;
}

- (void)walkGraph:(id)a3
{
  v5 = a3;
  v4 = [(ICCRRegisterLatest *)self contents];
  v5[2](v5, v4);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ICCRRegisterLatest *)self timestamp];
  v7 = [v6 shortDescription];
  v8 = [(ICCRRegisterLatest *)self contents];
  v9 = [v3 stringWithFormat:@"<%@ %p %@ %@>", v5, self, v7, v8];

  return v9;
}

@end