@interface CAMCaptureCoordinationInfo
- (BOOL)isEV0ForHDREV0Pair;
- (BOOL)isFilteredImageForFilteredPair;
- (BOOL)isFinalExpectedStillImageResult;
- (BOOL)isHDRForHDREV0Pair;
- (BOOL)isUnfilteredImageForFilteredPair;
- (BOOL)representsFinalProcessedStillImage;
- (CAMCaptureCoordinationInfo)initWithIdentifier:(id)identifier allExpectedResultSpecifiers:(id)specifiers resultSpecifiers:(unint64_t)resultSpecifiers;
- (id)description;
@end

@implementation CAMCaptureCoordinationInfo

- (CAMCaptureCoordinationInfo)initWithIdentifier:(id)identifier allExpectedResultSpecifiers:(id)specifiers resultSpecifiers:(unint64_t)resultSpecifiers
{
  identifierCopy = identifier;
  specifiersCopy = specifiers;
  v17.receiver = self;
  v17.super_class = CAMCaptureCoordinationInfo;
  v10 = [(CAMCaptureCoordinationInfo *)&v17 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v13 = [specifiersCopy copy];
    allExpectedResultSpecifiers = v10->_allExpectedResultSpecifiers;
    v10->_allExpectedResultSpecifiers = v13;

    v10->_resultSpecifiers = resultSpecifiers;
    v15 = v10;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v13.receiver = self;
  v13.super_class = CAMCaptureCoordinationInfo;
  v4 = [(CAMCaptureCoordinationInfo *)&v13 description];
  resultSpecifiers = [(CAMCaptureCoordinationInfo *)self resultSpecifiers];
  v6 = resultSpecifiers;
  if ((resultSpecifiers & 2) != 0)
  {
    v7 = [&stru_1F1660A30 stringByAppendingString:@"Filtered"];
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = &stru_1F1660A30;
  if (resultSpecifiers)
  {
LABEL_5:
    v8 = [(__CFString *)v7 stringByAppendingString:@"HDR"];

    v7 = v8;
  }

LABEL_6:
  if (![(__CFString *)v7 length])
  {

    v7 = @"None";
  }

  allExpectedResultSpecifiers = [(CAMCaptureCoordinationInfo *)self allExpectedResultSpecifiers];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__4;
  v19 = __Block_byref_object_dispose__4;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __CAMDebugStringForCaptureResultSpecifiersSet_block_invoke;
  v14[3] = &unk_1E76F8BA0;
  v14[4] = &v15;
  [allExpectedResultSpecifiers enumerateObjectsUsingBlock:v14];
  v10 = v16[5];
  _Block_object_dispose(&v15, 8);

  v11 = [v3 stringWithFormat:@"%@: %@ (of %@)", v4, v7, v10];

  return v11;
}

- (BOOL)isUnfilteredImageForFilteredPair
{
  allExpectedResultSpecifiers = [(CAMCaptureCoordinationInfo *)self allExpectedResultSpecifiers];
  resultSpecifiers = [(CAMCaptureCoordinationInfo *)self resultSpecifiers];
  if (resultSpecifiers == (resultSpecifiers | 2))
  {
    v5 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    v5 = [allExpectedResultSpecifiers containsObject:v6];
  }

  return v5;
}

- (BOOL)isFilteredImageForFilteredPair
{
  allExpectedResultSpecifiers = [(CAMCaptureCoordinationInfo *)self allExpectedResultSpecifiers];
  resultSpecifiers = [(CAMCaptureCoordinationInfo *)self resultSpecifiers];
  if (resultSpecifiers == (resultSpecifiers & 0xFFFFFFFFFFFFFFFDLL))
  {
    v5 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    v5 = [allExpectedResultSpecifiers containsObject:v6];
  }

  return v5;
}

- (BOOL)isEV0ForHDREV0Pair
{
  allExpectedResultSpecifiers = [(CAMCaptureCoordinationInfo *)self allExpectedResultSpecifiers];
  resultSpecifiers = [(CAMCaptureCoordinationInfo *)self resultSpecifiers];
  if (resultSpecifiers == (resultSpecifiers | 1))
  {
    v5 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    v5 = [allExpectedResultSpecifiers containsObject:v6];
  }

  return v5;
}

- (BOOL)isHDRForHDREV0Pair
{
  allExpectedResultSpecifiers = [(CAMCaptureCoordinationInfo *)self allExpectedResultSpecifiers];
  resultSpecifiers = [(CAMCaptureCoordinationInfo *)self resultSpecifiers];
  if (resultSpecifiers == (resultSpecifiers & 0xFFFFFFFFFFFFFFFELL))
  {
    v5 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    v5 = [allExpectedResultSpecifiers containsObject:v6];
  }

  return v5;
}

- (BOOL)isFinalExpectedStillImageResult
{
  if ([(CAMCaptureCoordinationInfo *)self isEV0ForHDREV0Pair])
  {
    return 0;
  }

  else
  {
    return ![(CAMCaptureCoordinationInfo *)self isUnfilteredImageForFilteredPair];
  }
}

- (BOOL)representsFinalProcessedStillImage
{
  if ([(CAMCaptureCoordinationInfo *)self isEV0ForHDREV0Pair])
  {
    return 0;
  }

  else
  {
    return ![(CAMCaptureCoordinationInfo *)self isUnfilteredImageForFilteredPair];
  }
}

@end