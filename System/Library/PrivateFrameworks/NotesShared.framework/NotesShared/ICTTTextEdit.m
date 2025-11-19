@interface ICTTTextEdit
- (BOOL)isEqual:(id)a3;
- (ICTTTextEdit)initWithAttributes:(id)a3 range:(_NSRange)a4;
- (ICTTTextEdit)initWithTimestamp:(id)a3 replicaID:(id)a4 range:(_NSRange)a5;
- (_NSRange)range;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionWithNote:(id)a3;
- (unint64_t)hash;
@end

@implementation ICTTTextEdit

- (ICTTTextEdit)initWithTimestamp:(id)a3 replicaID:(id)a4 range:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v10 = a3;
  v11 = a4;
  v15.receiver = self;
  v15.super_class = ICTTTextEdit;
  v12 = [(ICTTTextEdit *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_timestamp, a3);
    objc_storeStrong(&v13->_replicaID, a4);
    v13->_range.location = location;
    v13->_range.length = length;
  }

  return v13;
}

- (ICTTTextEdit)initWithAttributes:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = [v7 objectForKeyedSubscript:ICTTAttributeNameReplicaID];
  if (v8)
  {
    v9 = [v7 objectForKeyedSubscript:ICTTAttributeNameTimestamp];
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

    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ICTTTextEdit *)self timestamp];
  v7 = [(ICTTTextEdit *)self replicaID];
  v12.location = [(ICTTTextEdit *)self range];
  v8 = NSStringFromRange(v12);
  v9 = [v3 stringWithFormat:@"<%@: %p, timestamp: %@, replicaID: %@, range: %@>", v5, self, v6, v7, v8];

  return v9;
}

- (id)descriptionWithNote:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBC6A0];
  v6 = [(ICTTTextEdit *)self replicaID];
  v7 = [v4 userIDForReplicaID:v6];
  v8 = [v5 ic_participantNameOrFallbackForUserRecordName:v7 note:v4];

  v9 = [(ICTTTextEdit *)self timestamp];

  if (v9)
  {
    v10 = MEMORY[0x277CCA968];
    v11 = [(ICTTTextEdit *)self timestamp];
    v12 = [v10 localizedStringFromDate:v11 dateStyle:1 timeStyle:1];

    v13 = [(ICTTTextEdit *)self replicaID];
    LODWORD(v11) = [v4 trustsTimestampsFromReplicaID:v13];

    if (v11)
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

- (BOOL)isEqual:(id)a3
{
  if (a3 != self)
  {
    v4 = a3;
    objc_opt_class();
    v5 = ICDynamicCast();

    v6 = [(ICTTTextEdit *)self timestamp];
    v7 = [v5 timestamp];
    v8 = *MEMORY[0x277CBEEE8];
    if (*MEMORY[0x277CBEEE8] == v6)
    {
      v9 = 0;
    }

    else
    {
      v9 = v6;
    }

    v10 = v9;
    if (v8 == v7)
    {
      v11 = 0;
    }

    else
    {
      v11 = v7;
    }

    v12 = v11;
    if (v10 | v12)
    {
      v13 = v12;
      if (v10)
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

      v15 = [v10 isEqual:v12];

      if (!v15)
      {
        v21 = 0;
        goto LABEL_24;
      }
    }

    v10 = [v5 replicaID];
    v13 = [(ICTTTextEdit *)self replicaID];
    if ([v10 isEqual:v13])
    {
      v16 = [v5 range];
      v18 = v17;
      v21 = v16 == [(ICTTTextEdit *)self range]&& v18 == v19;
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
    v4 = [(ICTTTextEdit *)self timestamp];
    v5 = [v4 hash];
    if (!v5)
    {
      v6 = [MEMORY[0x277CBEB68] null];
      v5 = [v6 hash];
    }

    v7 = [(ICTTTextEdit *)self replicaID];
    v8 = [v7 hash];
    [(ICTTTextEdit *)self range];
    [(ICTTTextEdit *)self range];
    self->_hash = ICHashWithHashKeys(v5, v9, v10, v11, v12, v13, v14, v15, v8);

    return self->_hash;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ICTTTextEdit allocWithZone:a3];
  v5 = [(ICTTTextEdit *)self timestamp];
  v6 = [(ICTTTextEdit *)self replicaID];
  v7 = [(ICTTTextEdit *)self range];
  v9 = [(ICTTTextEdit *)v4 initWithTimestamp:v5 replicaID:v6 range:v7, v8];

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