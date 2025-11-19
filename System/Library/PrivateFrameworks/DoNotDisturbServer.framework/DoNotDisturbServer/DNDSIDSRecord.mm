@interface DNDSIDSRecord
+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)_initWithMetadata:(id)a3 data:(id)a4;
- (id)dictionaryRepresentationWithContext:(id)a3;
@end

@implementation DNDSIDSRecord

- (id)_initWithMetadata:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = DNDSIDSRecord;
  v8 = [(DNDSIDSRecord *)&v14 init];
  if (v8)
  {
    if (v7)
    {
      [MEMORY[0x277CBEB38] dictionaryWithDictionary:v7];
    }

    else
    {
      [MEMORY[0x277CBEB38] dictionary];
    }
    v9 = ;
    data = v8->_data;
    v8->_data = v9;

    v11 = [v6 copy];
    metadata = v8->_metadata;
    v8->_metadata = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (self == v4)
    {
      v9 = 1;
      goto LABEL_17;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      metadata = self->_metadata;
      v8 = v6->_metadata;
      if (metadata == v8)
      {
        goto LABEL_8;
      }

      v9 = 0;
      if (metadata && v8)
      {
        if ([(DNDSIDSRecordMetadata *)metadata isEqual:?])
        {
LABEL_8:
          data = self->_data;
          v11 = v6->_data;
          if (data == v11)
          {
            v9 = 1;
          }

          else
          {
            v9 = 0;
            if (data && v11)
            {
              v9 = [(NSMutableDictionary *)data isEqual:?];
            }
          }

          goto LABEL_16;
        }

        v9 = 0;
      }

LABEL_16:

      goto LABEL_17;
    }
  }

  v9 = 0;
LABEL_17:

  return v9;
}

+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 bs_safeDictionaryForKey:@"metadata"];
  v9 = [DNDSIDSRecordMetadata newWithDictionaryRepresentation:v8 context:v6];

  v10 = [v7 bs_safeDictionaryForKey:@"data"];

  v11 = [[a1 alloc] _initWithMetadata:v9 data:v10];
  return v11;
}

- (id)dictionaryRepresentationWithContext:(id)a3
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"metadata";
  v4 = [(DNDSIDSRecordMetadata *)self->_metadata dictionaryRepresentationWithContext:a3];
  v8[1] = @"data";
  v9[0] = v4;
  v9[1] = self->_data;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

@end