@interface NSManagedObjectID(HomeKitDaemon)
- (id)hmd_debugIdentifier;
@end

@implementation NSManagedObjectID(HomeKitDaemon)

- (id)hmd_debugIdentifier
{
  uRIRepresentation = [self URIRepresentation];
  path = [uRIRepresentation path];
  v4 = [path componentsSeparatedByString:@"/"];

  isTemporaryID = [self isTemporaryID];
  v6 = MEMORY[0x277CCACA8];
  v7 = [v4 objectAtIndexedSubscript:1];
  v8 = [v4 objectAtIndexedSubscript:2];
  v9 = v8;
  if (isTemporaryID)
  {
    v10 = [v8 substringFromIndex:1];
    v11 = [v10 hash];
    v12 = [v6 stringWithFormat:@"%@/t%u", v7, HIWORD(v11) ^ WORD1(v11) ^ (WORD2(v11) ^ v11)];
  }

  else
  {
    v12 = [v6 stringWithFormat:@"%@/%@", v7, v8];
  }

  return v12;
}

@end