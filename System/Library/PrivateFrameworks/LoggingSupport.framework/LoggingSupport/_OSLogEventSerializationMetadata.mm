@interface _OSLogEventSerializationMetadata
- (_OSLogEventSerializationMetadata)init;
- (_OSLogEventSerializationMetadata)initWithDataRepresentation:(id)a3;
- (id)dataRepresentation;
- (id)indexForString:(id)a3;
- (id)stringForIndex:(id)a3;
@end

@implementation _OSLogEventSerializationMetadata

- (id)stringForIndex:(id)a3
{
  v5 = a3;
  v6 = [(_OSLogEventSerializationMetadata *)self indexToStringMapping];
  v7 = [v6 objectForKeyedSubscript:v5];

  if (!v7)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:178 description:@"Invalid index-to-string mapping"];
  }

  return v7;
}

- (id)indexForString:(id)a3
{
  v4 = a3;
  v5 = [(_OSLogEventSerializationMetadata *)self stringToIndexMapping];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = [(_OSLogEventSerializationMetadata *)self stringToIndexMapping];
    v6 = [v7 numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];

    v9 = [(_OSLogEventSerializationMetadata *)self stringToIndexMapping];
    [v9 setObject:v6 forKeyedSubscript:v4];
  }

  return v6;
}

- (id)dataRepresentation
{
  v26[2] = *MEMORY[0x277D85DE8];
  v25[0] = @"Version";
  v25[1] = @"StringIndex";
  v26[0] = &unk_2841B9228;
  v3 = [(_OSLogEventSerializationMetadata *)self stringToIndexMapping];
  v26[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  v5 = [v4 mutableCopy];

  v6 = [(_OSLogEventSerializationMetadata *)self firstDate];

  if (v6)
  {
    v7 = [(_OSLogEventSerializationMetadata *)self firstDate];
    [v5 setObject:v7 forKeyedSubscript:@"FirstDate"];
  }

  v8 = [(_OSLogEventSerializationMetadata *)self lastDate];

  if (v8)
  {
    v9 = [(_OSLogEventSerializationMetadata *)self lastDate];
    [v5 setObject:v9 forKeyedSubscript:@"LastDate"];
  }

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[_OSLogEventSerializationMetadata flags](self, "flags")}];
  [v5 setObject:v10 forKeyedSubscript:@"Flags"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[_OSLogEventSerializationMetadata maxLogEventBatchSize](self, "maxLogEventBatchSize")}];
  [v5 setObject:v11 forKeyedSubscript:@"MaxLogEventBatchSize"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[_OSLogEventSerializationMetadata serializedEventCount](self, "serializedEventCount")}];
  [v5 setObject:v12 forKeyedSubscript:@"SerializedEventCount"];

  v13 = [(_OSLogEventSerializationMetadata *)self filterPredicateDescription];

  if (v13)
  {
    v14 = [(_OSLogEventSerializationMetadata *)self filterPredicateDescription];
    [v5 setObject:v14 forKeyedSubscript:@"FilterPredicateDescription"];
  }

  v22 = 0;
  v15 = [MEMORY[0x277CCAC58] dataWithPropertyList:v5 format:200 options:0 error:&v22];
  v16 = v22;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v16)
    {
      if (v18)
      {
        v19 = [v16 localizedDescription];
        *buf = 138412290;
        v24 = v19;
        _os_log_error_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Serializing metadata failed with an error: %@", buf, 0xCu);
      }
    }

    else if (v18)
    {
      *buf = 0;
      _os_log_error_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Serializing metadata failed without detailed error", buf, 2u);
    }
  }

  v20 = *MEMORY[0x277D85DE8];

  return v15;
}

- (_OSLogEventSerializationMetadata)initWithDataRepresentation:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = _OSLogEventSerializationMetadata;
  v5 = [(_OSLogEventSerializationMetadata *)&v33 init];
  if (v5)
  {
    v32 = 0;
    v6 = [MEMORY[0x277CCAC58] propertyListWithData:v4 options:0 format:0 error:&v32];
    v7 = v32;
    v8 = v7;
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v6;
        v11 = [v10 objectForKeyedSubscript:@"Version"];
        if (v11)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ![v11 unsignedIntValue])
          {
            v12 = [v10 objectForKeyedSubscript:@"Flags"];
            v5->_flags = v12;

            v13 = [v10 objectForKeyedSubscript:@"MaxLogEventBatchSize"];
            v5->_maxLogEventBatchSize = v13;

            v14 = [v10 objectForKeyedSubscript:@"SerializedEventCount"];
            v5->_serializedEventCount = v14;

            v15 = [v10 objectForKeyedSubscript:@"FilterPredicateDescription"];
            if (v15)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                objc_storeStrong(&v5->_filterPredicateDescription, v15);
              }
            }

            v16 = [v10 objectForKeyedSubscript:@"FirstDate"];
            if (v16)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                objc_storeStrong(&v5->_firstDate, v16);
              }
            }

            v17 = [v10 objectForKeyedSubscript:@"LastDate"];
            if (v17)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                objc_storeStrong(&v5->_lastDate, v17);
              }
            }

            v18 = [v10 objectForKeyedSubscript:@"StringIndex"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = v15;
              v28 = 0;
              v29 = &v28;
              v30 = 0x2020000000;
              v31 = 0;
              v19 = [MEMORY[0x277CBEB38] dictionary];
              v25[0] = MEMORY[0x277D85DD0];
              v25[1] = 3221225472;
              v25[2] = __63___OSLogEventSerializationMetadata_initWithDataRepresentation___block_invoke;
              v25[3] = &unk_2787AEDB0;
              v27 = &v28;
              v20 = v19;
              v26 = v20;
              [v18 enumerateKeysAndObjectsUsingBlock:v25];
              v21 = *(v29 + 24);
              if ((v21 & 1) == 0)
              {
                objc_storeStrong(&v5->_indexToStringMapping, v19);
              }

              _Block_object_dispose(&v28, 8);
              if ((v21 & 1) == 0)
              {
                goto LABEL_24;
              }

LABEL_28:
              v22 = 0;
              goto LABEL_29;
            }
          }
        }

        goto LABEL_28;
      }
    }

    goto LABEL_28;
  }

LABEL_24:
  v22 = v5;
LABEL_29:

  return v22;
}

- (_OSLogEventSerializationMetadata)init
{
  v6.receiver = self;
  v6.super_class = _OSLogEventSerializationMetadata;
  v2 = [(_OSLogEventSerializationMetadata *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    stringToIndexMapping = v2->_stringToIndexMapping;
    v2->_stringToIndexMapping = v3;
  }

  return v2;
}

@end