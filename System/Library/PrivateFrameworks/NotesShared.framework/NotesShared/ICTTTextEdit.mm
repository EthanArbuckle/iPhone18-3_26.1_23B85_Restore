@interface ICTTTextEdit
- (BOOL)isEqual:(id)equal;
- (ICTTTextEdit)initWithAttributes:(id)attributes range:(_NSRange)range;
- (ICTTTextEdit)initWithTimestamp:(id)timestamp replicaID:(id)d range:(_NSRange)range;
- (_NSRange)range;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionWithNote:(id)note;
- (unint64_t)hash;
@end

@implementation ICTTTextEdit

- (ICTTTextEdit)initWithTimestamp:(id)timestamp replicaID:(id)d range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  timestampCopy = timestamp;
  dCopy = d;
  v15.receiver = self;
  v15.super_class = ICTTTextEdit;
  v12 = [(ICTTTextEdit *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_timestamp, timestamp);
    objc_storeStrong(&v13->_replicaID, d);
    v13->_range.location = location;
    v13->_range.length = length;
  }

  return v13;
}

- (ICTTTextEdit)initWithAttributes:(id)attributes range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  attributesCopy = attributes;
  v8 = [attributesCopy objectForKeyedSubscript:ICTTAttributeNameReplicaID];
  if (v8)
  {
    v9 = [attributesCopy objectForKeyedSubscript:ICTTAttributeNameTimestamp];
    v10 = v9;
    if (v9)
    {
      v11 = MEMORY[0x277CBEAA8];
      [v9 doubleValue];
      v12 = [v11 dateWithTimeIntervalSince1970:?];
    }

    else
    {
      v12 = 0;
    }

    self = [(ICTTTextEdit *)self initWithTimestamp:v12 replicaID:v8 range:location, length];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  timestamp = [(ICTTTextEdit *)self timestamp];
  replicaID = [(ICTTTextEdit *)self replicaID];
  v12.location = [(ICTTTextEdit *)self range];
  v8 = NSStringFromRange(v12);
  v9 = [v3 stringWithFormat:@"<%@: %p, timestamp: %@, replicaID: %@, range: %@>", v5, self, timestamp, replicaID, v8];

  return v9;
}

- (id)descriptionWithNote:(id)note
{
  noteCopy = note;
  v5 = MEMORY[0x277CBC6A0];
  replicaID = [(ICTTTextEdit *)self replicaID];
  v7 = [noteCopy userIDForReplicaID:replicaID];
  v8 = [v5 ic_participantNameOrFallbackForUserRecordName:v7 note:noteCopy];

  timestamp = [(ICTTTextEdit *)self timestamp];

  if (timestamp)
  {
    v10 = MEMORY[0x277CCA968];
    timestamp2 = [(ICTTTextEdit *)self timestamp];
    v12 = [v10 localizedStringFromDate:timestamp2 dateStyle:1 timeStyle:1];

    replicaID2 = [(ICTTTextEdit *)self replicaID];
    LODWORD(timestamp2) = [noteCopy trustsTimestampsFromReplicaID:replicaID2];

    if (timestamp2)
    {
      v14 = @"%@ edited at %@";
    }

    else
    {
      v14 = @"%@ edited at %@ (untrusted)";
    }

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:v14, v8, v12];
  }

  else
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ edited", v8];
  }

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  if (equal != self)
  {
    equalCopy = equal;
    objc_opt_class();
    v5 = ICDynamicCast();

    timestamp = [(ICTTTextEdit *)self timestamp];
    timestamp2 = [v5 timestamp];
    v8 = *MEMORY[0x277CBEEE8];
    if (*MEMORY[0x277CBEEE8] == timestamp)
    {
      v9 = 0;
    }

    else
    {
      v9 = timestamp;
    }

    replicaID = v9;
    if (v8 == timestamp2)
    {
      v11 = 0;
    }

    else
    {
      v11 = timestamp2;
    }

    v12 = v11;
    if (replicaID | v12)
    {
      replicaID2 = v12;
      if (replicaID)
      {
        v14 = v12 == 0;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        goto LABEL_22;
      }

      v15 = [replicaID isEqual:v12];

      if (!v15)
      {
        v21 = 0;
        goto LABEL_24;
      }
    }

    replicaID = [v5 replicaID];
    replicaID2 = [(ICTTTextEdit *)self replicaID];
    if ([replicaID isEqual:replicaID2])
    {
      range = [v5 range];
      v18 = v17;
      v21 = range == [(ICTTTextEdit *)self range]&& v18 == v19;
      goto LABEL_23;
    }

LABEL_22:
    v21 = 0;
LABEL_23:

LABEL_24:
    return v21;
  }

  return 1;
}

- (unint64_t)hash
{
  result = self->_hash;
  if (!result)
  {
    timestamp = [(ICTTTextEdit *)self timestamp];
    v5 = [timestamp hash];
    if (!v5)
    {
      null = [MEMORY[0x277CBEB68] null];
      v5 = [null hash];
    }

    replicaID = [(ICTTTextEdit *)self replicaID];
    v8 = [replicaID hash];
    [(ICTTTextEdit *)self range];
    [(ICTTTextEdit *)self range];
    self->_hash = ICHashWithHashKeys(v5, v9, v10, v11, v12, v13, v14, v15, v8);

    return self->_hash;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ICTTTextEdit allocWithZone:zone];
  timestamp = [(ICTTTextEdit *)self timestamp];
  replicaID = [(ICTTTextEdit *)self replicaID];
  range = [(ICTTTextEdit *)self range];
  v9 = [(ICTTTextEdit *)v4 initWithTimestamp:timestamp replicaID:replicaID range:range, v8];

  return v9;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end