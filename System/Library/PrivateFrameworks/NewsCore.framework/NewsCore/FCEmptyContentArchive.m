@interface FCEmptyContentArchive
- (BOOL)isEqual:(id)a3;
- (FCEmptyContentArchive)initWithCoder:(id)a3;
- (id)unarchiveIntoContentContext:(id)a3;
@end

@implementation FCEmptyContentArchive

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (FCEmptyContentArchive)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = FCEmptyContentArchive;
  return [(FCEmptyContentArchive *)&v4 init];
}

- (id)unarchiveIntoContentContext:(id)a3
{
  v3 = [FCContentUnarchiveResult alloc];
  v4 = [(FCContentUnarchiveResult *)v3 initWithInterestToken:MEMORY[0x1E695E0F0] storageSize:0];

  return v4;
}

@end