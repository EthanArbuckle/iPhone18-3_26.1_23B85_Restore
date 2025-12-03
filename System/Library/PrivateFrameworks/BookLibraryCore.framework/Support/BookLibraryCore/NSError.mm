@interface NSError
- (id)bldm_bookLibraryDatabaseErrorInFunction:(const char *)function;
@end

@implementation NSError

- (id)bldm_bookLibraryDatabaseErrorInFunction:(const char *)function
{
  function = [NSString stringWithFormat:@"CoreData error in %s", function];
  v9 = @"Underlying Error Description";
  v5 = [(NSError *)self description];
  v10 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v7 = sub_1000A905C(35, 0, function, v6);

  return v7;
}

@end