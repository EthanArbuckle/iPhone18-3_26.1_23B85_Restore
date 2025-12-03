@interface NSURL(LinkMetadata)
- (id)ln_linkedFrameworksWithError:()LinkMetadata;
@end

@implementation NSURL(LinkMetadata)

- (id)ln_linkedFrameworksWithError:()LinkMetadata
{
  path = [self path];
  v3 = LNLinkedFrameworksAtPath(path);

  path2 = [self path];
  v5 = [path2 stringByAppendingString:@".preview.dylib"];

  v6 = LNLinkedFrameworksAtPath(v5);
  v7 = [v3 arrayByAddingObjectsFromArray:v6];

  path3 = [self path];
  v9 = [path3 stringByAppendingString:@".debug.dylib"];

  v10 = LNLinkedFrameworksAtPath(v9);
  v11 = [v7 arrayByAddingObjectsFromArray:v10];

  return v11;
}

@end