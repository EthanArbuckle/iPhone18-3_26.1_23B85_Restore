@interface NSComparisonPredicate(BRQueryItemAdditions_Private)
- (id)br_urlWithWatchedChildren;
- (id)br_watchedFileObjectID;
- (id)br_watchedURL;
@end

@implementation NSComparisonPredicate(BRQueryItemAdditions_Private)

- (id)br_watchedURL
{
  if ([self predicateOperatorType] != 4)
  {
    v5 = 0;
    leftExpression = 0;
    rightExpression = 0;
LABEL_9:
    constantValue = 0;
    goto LABEL_10;
  }

  leftExpression = [self leftExpression];
  rightExpression = [self rightExpression];
  if ([leftExpression expressionType] != 3)
  {
    goto LABEL_8;
  }

  keyPath = [leftExpression keyPath];
  if ([keyPath isEqualToString:@"kMDItemURL.path"])
  {

    goto LABEL_7;
  }

  keyPath2 = [leftExpression keyPath];
  v7 = [keyPath2 isEqualToString:@"NSMetadataUbiquitousItemURLInLocalContainerKey.path"];

  if (!v7)
  {
LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

LABEL_7:
  if ([rightExpression expressionType])
  {
    goto LABEL_8;
  }

  constantValue = [rightExpression constantValue];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:constantValue];
  }

  else
  {
    v5 = 0;
  }

LABEL_10:

  return v5;
}

- (id)br_urlWithWatchedChildren
{
  if ([self predicateOperatorType] != 4)
  {
    v5 = 0;
    leftExpression = 0;
    rightExpression = 0;
LABEL_9:
    constantValue = 0;
    goto LABEL_10;
  }

  leftExpression = [self leftExpression];
  rightExpression = [self rightExpression];
  if ([leftExpression expressionType] != 3)
  {
    goto LABEL_8;
  }

  keyPath = [leftExpression keyPath];
  if ([keyPath isEqualToString:@"kMDItemURL.URLByDeletingLastPathComponent.path"])
  {

    goto LABEL_7;
  }

  keyPath2 = [leftExpression keyPath];
  v7 = [keyPath2 isEqualToString:@"NSMetadataUbiquitousItemURLInLocalContainerKey.URLByDeletingLastPathComponent.path"];

  if (!v7)
  {
LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

LABEL_7:
  if ([rightExpression expressionType])
  {
    goto LABEL_8;
  }

  constantValue = [rightExpression constantValue];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:constantValue];
  }

  else
  {
    v5 = 0;
  }

LABEL_10:

  return v5;
}

- (id)br_watchedFileObjectID
{
  if ([self predicateOperatorType] != 4)
  {
    v7 = 0;
    leftExpression = 0;
    rightExpression = 0;
LABEL_8:
    constantValue = 0;
    goto LABEL_9;
  }

  leftExpression = [self leftExpression];
  rightExpression = [self rightExpression];
  if ([leftExpression expressionType] != 3 || (objc_msgSend(leftExpression, "keyPath"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", @"BRMetadataItemFileObjectIdentifierKey"), v4, !v5))
  {
    v7 = 0;
    goto LABEL_8;
  }

  constantValue = [rightExpression constantValue];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = constantValue;
    constantValue = v7;
  }

  else
  {
    v7 = 0;
  }

LABEL_9:

  return v7;
}

@end