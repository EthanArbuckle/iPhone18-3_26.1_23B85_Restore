@interface COMeshVoteRequest
+ (id)acceptableResponses;
@end

@implementation COMeshVoteRequest

+ (id)acceptableResponses
{
  v2 = objc_alloc(MEMORY[0x277CBEB98]);
  v3 = objc_opt_class();
  v4 = [v2 initWithObjects:{v3, objc_opt_class(), 0}];

  return v4;
}

@end