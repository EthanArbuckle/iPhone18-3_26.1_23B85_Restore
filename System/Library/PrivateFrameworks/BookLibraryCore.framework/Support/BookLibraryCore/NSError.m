@interface NSError
- (id)bldm_bookLibraryDatabaseErrorInFunction:(const char *)a3;
@end

@implementation NSError

- (id)bldm_bookLibraryDatabaseErrorInFunction:(const char *)a3
{
  v4 = [NSString stringWithFormat:@"CoreData error in %s", a3];
  v9 = @"Underlying Error Description";
  v5 = [(NSError *)self description];
  v10 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v7 = sub_1000A905C(35, 0, v4, v6);

  return v7;
}

@end