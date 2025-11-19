@interface HKPHQ9Assessment(HDCodingSupport)
- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport;
- (HDCodableScoredAssessment)codableRepresentationForSync;
@end

@implementation HKPHQ9Assessment(HDCodingSupport)

- (HDCodableScoredAssessment)codableRepresentationForSync
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(HDCodableScoredAssessment);
  v12.receiver = a1;
  v12.super_class = &off_283D45508;
  v3 = objc_msgSendSuper2(&v12, sel_codableRepresentationForSync);
  [(HDCodableScoredAssessment *)v2 setSample:v3];

  -[HDCodableScoredAssessment setScore:](v2, "setScore:", [a1 score]);
  v4 = MEMORY[0x277CCAAB0];
  v5 = [a1 answers];
  v11 = 0;
  v6 = [v4 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v11];
  v7 = v11;

  if (!v6)
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC2F0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "Error archiving answers: %@", buf, 0xCu);
    }
  }

  [(HDCodableScoredAssessment *)v2 setAnswers:v6];
  -[HDCodableScoredAssessment setRisk:](v2, "setRisk:", [a1 risk]);

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport
{
  v4 = a3;
  v5 = [a1 codableRepresentationForSync];
  if (v5)
  {
    [v4 addScoredAssessmentSamples:v5];
  }

  return v5 != 0;
}

@end