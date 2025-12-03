@interface CATTaskMessageProgressUpdate
- (CATTaskMessageProgressUpdate)initWithCoder:(id)coder;
- (CATTaskMessageProgressUpdate)initWithTaskUUID:(id)d progress:(id)progress;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CATTaskMessageProgressUpdate

- (CATTaskMessageProgressUpdate)initWithTaskUUID:(id)d progress:(id)progress
{
  progressCopy = progress;
  v11.receiver = self;
  v11.super_class = CATTaskMessageProgressUpdate;
  v7 = [(CATTaskMessage *)&v11 initWithTaskUUID:d];
  if (v7)
  {
    v8 = [progressCopy copy];
    progress = v7->_progress;
    v7->_progress = v8;
  }

  return v7;
}

- (CATTaskMessageProgressUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CATTaskMessageProgressUpdate;
  v5 = [(CATTaskMessage *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"progress"];
    progress = v5->_progress;
    v5->_progress = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CATTaskMessageProgressUpdate;
  coderCopy = coder;
  [(CATTaskMessage *)&v6 encodeWithCoder:coderCopy];
  v5 = [(CATTaskMessageProgressUpdate *)self progress:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"progress"];
}

@end