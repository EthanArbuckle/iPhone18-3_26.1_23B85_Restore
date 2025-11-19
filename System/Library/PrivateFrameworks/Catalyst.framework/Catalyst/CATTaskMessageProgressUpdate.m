@interface CATTaskMessageProgressUpdate
- (CATTaskMessageProgressUpdate)initWithCoder:(id)a3;
- (CATTaskMessageProgressUpdate)initWithTaskUUID:(id)a3 progress:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CATTaskMessageProgressUpdate

- (CATTaskMessageProgressUpdate)initWithTaskUUID:(id)a3 progress:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = CATTaskMessageProgressUpdate;
  v7 = [(CATTaskMessage *)&v11 initWithTaskUUID:a3];
  if (v7)
  {
    v8 = [v6 copy];
    progress = v7->_progress;
    v7->_progress = v8;
  }

  return v7;
}

- (CATTaskMessageProgressUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CATTaskMessageProgressUpdate;
  v5 = [(CATTaskMessage *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"progress"];
    progress = v5->_progress;
    v5->_progress = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CATTaskMessageProgressUpdate;
  v4 = a3;
  [(CATTaskMessage *)&v6 encodeWithCoder:v4];
  v5 = [(CATTaskMessageProgressUpdate *)self progress:v6.receiver];
  [v4 encodeObject:v5 forKey:@"progress"];
}

@end