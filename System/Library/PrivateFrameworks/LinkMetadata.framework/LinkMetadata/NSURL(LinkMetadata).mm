@interface NSURL(LinkMetadata)
- (id)ln_linkedFrameworksWithError:()LinkMetadata;
@end

@implementation NSURL(LinkMetadata)

- (id)ln_linkedFrameworksWithError:()LinkMetadata
{
  v2 = [a1 path];
  v3 = LNLinkedFrameworksAtPath(v2);

  v4 = [a1 path];
  v5 = [v4 stringByAppendingString:@".preview.dylib"];

  v6 = LNLinkedFrameworksAtPath(v5);
  v7 = [v3 arrayByAddingObjectsFromArray:v6];

  v8 = [a1 path];
  v9 = [v8 stringByAppendingString:@".debug.dylib"];

  v10 = LNLinkedFrameworksAtPath(v9);
  v11 = [v7 arrayByAddingObjectsFromArray:v10];

  return v11;
}

@end