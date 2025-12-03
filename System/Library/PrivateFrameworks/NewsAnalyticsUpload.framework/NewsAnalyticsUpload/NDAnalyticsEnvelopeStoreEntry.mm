@interface NDAnalyticsEnvelopeStoreEntry
- (BOOL)isEqual:(id)equal;
- (NDAnalyticsEnvelopeStoreEntry)init;
- (NDAnalyticsEnvelopeStoreEntry)initWithStringRepresentation:(id)representation;
- (id)copyWithZone:(_NSZone *)zone;
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

- (NDAnalyticsEnvelopeStoreEntry)initWithStringRepresentation:(id)representation
{
  representationCopy = representation;
  if (!representationCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAnalyticsEnvelopeStoreEntry initWithStringRepresentation:];
  }

  v5 = [representationCopy componentsSeparatedByString:@"$"];
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
  stringValue = [v3 stringValue];
  v18[1] = stringValue;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_envelopeContentType];
  stringValue2 = [v5 stringValue];
  v18[2] = stringValue2;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = FCDynamicCast();

  if (v5)
  {
    envelopeIdentifier = [(NDAnalyticsEnvelopeStoreEntry *)self envelopeIdentifier];
    envelopeIdentifier2 = [v5 envelopeIdentifier];
    if ([envelopeIdentifier isEqualToString:envelopeIdentifier2])
    {
      envelopeSubmissionDate = [(NDAnalyticsEnvelopeStoreEntry *)self envelopeSubmissionDate];
      envelopeSubmissionDate2 = [v5 envelopeSubmissionDate];
      if ([envelopeSubmissionDate isEqualToDate:envelopeSubmissionDate2])
      {
        envelopeContentType = [(NDAnalyticsEnvelopeStoreEntry *)self envelopeContentType];
        v11 = envelopeContentType == [v5 envelopeContentType];
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
  envelopeIdentifier = [(NDAnalyticsEnvelopeStoreEntry *)self envelopeIdentifier];
  v4 = [envelopeIdentifier hash];
  envelopeSubmissionDate = [(NDAnalyticsEnvelopeStoreEntry *)self envelopeSubmissionDate];
  v6 = [envelopeSubmissionDate hash] ^ v4;
  envelopeContentType = [(NDAnalyticsEnvelopeStoreEntry *)self envelopeContentType];

  return v6 ^ envelopeContentType;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  stringRepresentation = [(NDAnalyticsEnvelopeStoreEntry *)self stringRepresentation];
  v6 = [v4 initWithStringRepresentation:stringRepresentation];

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x277D30F48] descriptionWithObject:self];
  envelopeIdentifier = [(NDAnalyticsEnvelopeStoreEntry *)self envelopeIdentifier];
  [v3 addField:@"identifier" object:envelopeIdentifier];

  envelopeSubmissionDate = [(NDAnalyticsEnvelopeStoreEntry *)self envelopeSubmissionDate];
  [v3 addField:@"submissionDate" object:envelopeSubmissionDate];

  v6 = [MEMORY[0x277CCABB0] numberWithInt:{-[NDAnalyticsEnvelopeStoreEntry envelopeContentType](self, "envelopeContentType")}];
  [v3 addField:@"contentType" object:v6];

  descriptionString = [v3 descriptionString];

  return descriptionString;
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