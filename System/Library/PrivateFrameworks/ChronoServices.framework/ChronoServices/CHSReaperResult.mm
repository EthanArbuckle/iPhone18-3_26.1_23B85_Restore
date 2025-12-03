@interface CHSReaperResult
- (CHSReaperResult)initWithBSXPCCoder:(id)coder;
- (CHSReaperResult)initWithCoder:(id)coder;
- (CHSReaperResult)initWithProposedURLs:(id)ls protectedURLs:(id)rLs deletedURLs:(id)uRLs;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSReaperResult

- (CHSReaperResult)initWithProposedURLs:(id)ls protectedURLs:(id)rLs deletedURLs:(id)uRLs
{
  lsCopy = ls;
  rLsCopy = rLs;
  uRLsCopy = uRLs;
  v11 = [lsCopy copy];
  proposedURLs = self->_proposedURLs;
  self->_proposedURLs = v11;

  v13 = [rLsCopy copy];
  protectedURLs = self->_protectedURLs;
  self->_protectedURLs = v13;

  v15 = [uRLsCopy copy];
  deletedURLs = self->_deletedURLs;
  self->_deletedURLs = v15;

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_proposedURLs forKey:@"_proposedURLs"];
  [coderCopy encodeObject:self->_protectedURLs forKey:@"_protectedURLs"];
  [coderCopy encodeObject:self->_deletedURLs forKey:@"_deletedURLs"];
}

- (CHSReaperResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v6 = [coderCopy decodeObjectOfClasses:v5 forKey:@"_proposedURLs"];

  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"_protectedURLs"];

  v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"deletedURLs"];

  selfCopy = 0;
  if (v6 && v8 && v10)
  {
    self = [(CHSReaperResult *)self initWithProposedURLs:v6 protectedURLs:v8 deletedURLs:v10];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeCollection:self->_proposedURLs forKey:@"_proposedURLs"];
  [coderCopy encodeCollection:self->_protectedURLs forKey:@"_protectedURLs"];
  [coderCopy encodeCollection:self->_deletedURLs forKey:@"_deletedURLs"];
}

- (CHSReaperResult)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [coderCopy decodeCollectionOfClass:v5 containingClass:objc_opt_class() forKey:@"_proposedURLs"];
  v7 = objc_opt_class();
  v8 = [coderCopy decodeCollectionOfClass:v7 containingClass:objc_opt_class() forKey:@"_protectedURLs"];
  v9 = objc_opt_class();
  v10 = [coderCopy decodeCollectionOfClass:v9 containingClass:objc_opt_class() forKey:@"_deletedURLs"];
  v11 = v10;
  selfCopy = 0;
  if (v6 && v8 && v10)
  {
    self = [(CHSReaperResult *)self initWithProposedURLs:v6 protectedURLs:v8 deletedURLs:v10];
    selfCopy = self;
  }

  return selfCopy;
}

@end