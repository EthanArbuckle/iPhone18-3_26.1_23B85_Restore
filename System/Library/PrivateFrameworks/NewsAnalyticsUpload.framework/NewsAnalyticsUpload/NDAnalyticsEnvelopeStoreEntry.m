@interface NDAnalyticsEnvelopeStoreEntry
- (BOOL)isEqual:(id)a3;
- (NDAnalyticsEnvelopeStoreEntry)init;
- (NDAnalyticsEnvelopeStoreEntry)initWithStringRepresentation:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)stringRepresentation;
- (unint64_t)hash;
@end

@implementation NDAnalyticsEnvelopeStoreEntry

- (NDAnalyticsEnvelopeStoreEntry)init
{
  v3.receiver = self;
  v3.super_class = NDAnalyticsEnvelopeStoreEntry;
  return [(NDAnalyticsEnvelopeStoreEntry *)&v3 init];
}

- (NDAnalyticsEnvelopeStoreEntry)initWithStringRepresentation:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAnalyticsEnvelopeStoreEntry initWithStringRepresentation:];
  }

  v5 = [v4 componentsSeparatedByString:@"$"];
  if ([v5 count] < 3)
  {
    v6 = 0;
LABEL_8:

    goto LABEL_9;
  }

  v6 = [(NDAnalyticsEnvelopeStoreEntry *)self init];
  if (v6)
  {
    v7 = [v5 objectAtIndexedSubscript:0];
    envelopeIdentifier = v6->_envelopeIdentifier;
    v6->_envelopeIdentifier = v7;

    v9 = [v5 objectAtIndexedSubscript:1];
    v6->_submissionDateMillisecondsSince1970 = [v9 fc_unsignedLongLongValue];

    self = [v5 objectAtIndexedSubscript:2];
    v6->_envelopeContentType = [(NDAnalyticsEnvelopeStoreEntry *)self integerValue];
    goto LABEL_8;
  }

LABEL_9:

  return v6;
}

- (id)stringRepresentation
{
  v18[3] = *MEMORY[0x277D85DE8];
  v18[0] = self->_envelopeIdentifier;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_submissionDateMillisecondsSince1970];
  v4 = [v3 stringValue];
  v18[1] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_envelopeContentType];
  v6 = [v5 stringValue];
  v18[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];

  v8 = objc_opt_new();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __53__NDAnalyticsEnvelopeStoreEntry_stringRepresentation__block_invoke;
  v15[3] = &unk_27997ACB8;
  v9 = v8;
  v16 = v9;
  v17 = v7;
  v10 = v7;
  [v10 enumerateObjectsUsingBlock:v15];
  v11 = v17;
  v12 = v9;

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t __53__NDAnalyticsEnvelopeStoreEntry_stringRepresentation__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) appendString:a2];
  result = [*(a1 + 40) count];
  if (result - 1 != a3)
  {
    v6 = *(a1 + 32);

    return [v6 appendString:@"$"];
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = FCDynamicCast();

  if (v5)
  {
    v6 = [(NDAnalyticsEnvelopeStoreEntry *)self envelopeIdentifier];
    v7 = [v5 envelopeIdentifier];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(NDAnalyticsEnvelopeStoreEntry *)self envelopeSubmissionDate];
      v9 = [v5 envelopeSubmissionDate];
      if ([v8 isEqualToDate:v9])
      {
        v10 = [(NDAnalyticsEnvelopeStoreEntry *)self envelopeContentType];
        v11 = v10 == [v5 envelopeContentType];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NDAnalyticsEnvelopeStoreEntry *)self envelopeIdentifier];
  v4 = [v3 hash];
  v5 = [(NDAnalyticsEnvelopeStoreEntry *)self envelopeSubmissionDate];
  v6 = [v5 hash] ^ v4;
  v7 = [(NDAnalyticsEnvelopeStoreEntry *)self envelopeContentType];

  return v6 ^ v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(NDAnalyticsEnvelopeStoreEntry *)self stringRepresentation];
  v6 = [v4 initWithStringRepresentation:v5];

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x277D30F48] descriptionWithObject:self];
  v4 = [(NDAnalyticsEnvelopeStoreEntry *)self envelopeIdentifier];
  [v3 addField:@"identifier" object:v4];

  v5 = [(NDAnalyticsEnvelopeStoreEntry *)self envelopeSubmissionDate];
  [v3 addField:@"submissionDate" object:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithInt:{-[NDAnalyticsEnvelopeStoreEntry envelopeContentType](self, "envelopeContentType")}];
  [v3 addField:@"contentType" object:v6];

  v7 = [v3 descriptionString];

  return v7;
}

- (void)initWithStringRepresentation:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "stringRepresentation", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end