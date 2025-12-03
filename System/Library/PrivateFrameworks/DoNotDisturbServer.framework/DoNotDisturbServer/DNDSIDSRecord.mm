@interface DNDSIDSRecord
+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context;
- (BOOL)isEqual:(id)equal;
- (id)_initWithMetadata:(id)metadata data:(id)data;
- (id)dictionaryRepresentationWithContext:(id)context;
@end

@implementation DNDSIDSRecord

- (id)_initWithMetadata:(id)metadata data:(id)data
{
  metadataCopy = metadata;
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = DNDSIDSRecord;
  v8 = [(DNDSIDSRecord *)&v14 init];
  if (v8)
  {
    if (dataCopy)
    {
      [MEMORY[0x277CBEB38] dictionaryWithDictionary:dataCopy];
    }

    else
    {
      [MEMORY[0x277CBEB38] dictionary];
    }
    v9 = ;
    data = v8->_data;
    v8->_data = v9;

    v11 = [metadataCopy copy];
    metadata = v8->_metadata;
    v8->_metadata = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy)
  {
    if (self == equalCopy)
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

+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context
{
  contextCopy = context;
  representationCopy = representation;
  v8 = [representationCopy bs_safeDictionaryForKey:@"metadata"];
  v9 = [DNDSIDSRecordMetadata newWithDictionaryRepresentation:v8 context:contextCopy];

  v10 = [representationCopy bs_safeDictionaryForKey:@"data"];

  v11 = [[self alloc] _initWithMetadata:v9 data:v10];
  return v11;
}

- (id)dictionaryRepresentationWithContext:(id)context
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"metadata";
  v4 = [(DNDSIDSRecordMetadata *)self->_metadata dictionaryRepresentationWithContext:context];
  v8[1] = @"data";
  v9[0] = v4;
  v9[1] = self->_data;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

@end