@interface NSError
@end

@implementation NSError

id __44__NSError_MRAdditions__mr_initWithProtobuf___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696ABC0];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v4 mr_initWithProtobuf:v3];

  return v5;
}

@end