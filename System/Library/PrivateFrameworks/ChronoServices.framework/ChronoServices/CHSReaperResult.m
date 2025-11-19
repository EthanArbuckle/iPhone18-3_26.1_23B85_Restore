@interface CHSReaperResult
- (CHSReaperResult)initWithBSXPCCoder:(id)a3;
- (CHSReaperResult)initWithCoder:(id)a3;
- (CHSReaperResult)initWithProposedURLs:(id)a3 protectedURLs:(id)a4 deletedURLs:(id)a5;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHSReaperResult

- (CHSReaperResult)initWithProposedURLs:(id)a3 protectedURLs:(id)a4 deletedURLs:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 copy];
  proposedURLs = self->_proposedURLs;
  self->_proposedURLs = v11;

  v13 = [v9 copy];
  protectedURLs = self->_protectedURLs;
  self->_protectedURLs = v13;

  v15 = [v10 copy];
  deletedURLs = self->_deletedURLs;
  self->_deletedURLs = v15;

  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_proposedURLs forKey:@"_proposedURLs"];
  [v4 encodeObject:self->_protectedURLs forKey:@"_protectedURLs"];
  [v4 encodeObject:self->_deletedURLs forKey:@"_deletedURLs"];
}

- (CHSReaperResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v6 = [v4 decodeObjectOfClasses:v5 forKey:@"_proposedURLs"];

  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"_protectedURLs"];

  v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"deletedURLs"];

  v11 = 0;
  if (v6 && v8 && v10)
  {
    self = [(CHSReaperResult *)self initWithProposedURLs:v6 protectedURLs:v8 deletedURLs:v10];
    v11 = self;
  }

  return v11;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  [v4 encodeCollection:self->_proposedURLs forKey:@"_proposedURLs"];
  [v4 encodeCollection:self->_protectedURLs forKey:@"_protectedURLs"];
  [v4 encodeCollection:self->_deletedURLs forKey:@"_deletedURLs"];
}

- (CHSReaperResult)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 decodeCollectionOfClass:v5 containingClass:objc_opt_class() forKey:@"_proposedURLs"];
  v7 = objc_opt_class();
  v8 = [v4 decodeCollectionOfClass:v7 containingClass:objc_opt_class() forKey:@"_protectedURLs"];
  v9 = objc_opt_class();
  v10 = [v4 decodeCollectionOfClass:v9 containingClass:objc_opt_class() forKey:@"_deletedURLs"];
  v11 = v10;
  v12 = 0;
  if (v6 && v8 && v10)
  {
    self = [(CHSReaperResult *)self initWithProposedURLs:v6 protectedURLs:v8 deletedURLs:v10];
    v12 = self;
  }

  return v12;
}

@end