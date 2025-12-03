@interface CPLCloudKitIgnoredZoneIdentification
+ (int64_t)scopeTypeForCloudKitScope:(id)scope proposedScopeType:(int64_t)type fetchedRecords:(id)records currentUserID:(id)d;
@end

@implementation CPLCloudKitIgnoredZoneIdentification

+ (int64_t)scopeTypeForCloudKitScope:(id)scope proposedScopeType:(int64_t)type fetchedRecords:(id)records currentUserID:(id)d
{
  if (type == 0x7FFFFFFF)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

@end