@interface EDSearchableIndexSubjectTester
- (BOOL)verifySearchableItem:(id)item matchesDataSample:(id)sample;
- (NSArray)fetchAttributes;
- (id)expressionFromDataSamples:(id)samples;
- (id)transformDataForVerification:(id)verification;
@end

@implementation EDSearchableIndexSubjectTester

- (id)transformDataForVerification:(id)verification
{
  verificationCopy = verification;
  subject = [verificationCopy subject];
  if (![subject length] || (v5 = verificationCopy, objc_msgSend(subject, "containsString:", @"\x00x01")))
  {

    v5 = 0;
  }

  return v5;
}

- (id)expressionFromDataSamples:(id)samples
{
  allValues = [samples allValues];
  v4 = [allValues ef_map:&__block_literal_global_83];

  v5 = [MEMORY[0x1E699AE78] queryStringByJoiningQueries:v4 withOperand:2];
  v6 = [MEMORY[0x1E699AE80] expressionWithQueryString:v5];

  return v6;
}

id __60__EDSearchableIndexSubjectTester_expressionFromDataSamples___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 subject];
  v3 = MEMORY[0x1E696AEC0];
  v4 = [v2 em_stringForQuotingWithCharacter:39];
  v5 = [v3 stringWithFormat:@"%@ = '%@'", *MEMORY[0x1E6964B58], v4];

  return v5;
}

- (NSArray)fetchAttributes
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = *MEMORY[0x1E6964B58];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (BOOL)verifySearchableItem:(id)item matchesDataSample:(id)sample
{
  sampleCopy = sample;
  attributeSet = [item attributeSet];
  subject = [attributeSet subject];

  subject2 = [sampleCopy subject];
  v9 = subject2;
  v10 = 0;
  if (subject && subject2)
  {
    v10 = [subject compare:subject2] == 0;
  }

  return v10;
}

@end