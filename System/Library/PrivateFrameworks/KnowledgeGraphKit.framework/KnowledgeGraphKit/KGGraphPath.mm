@interface KGGraphPath
- (KGGraphPath)initWithSourceNodeIdentifier:(unint64_t)identifier targetNodeIdentifier:(unint64_t)nodeIdentifier numberOfPaths:(unint64_t)paths;
@end

@implementation KGGraphPath

- (KGGraphPath)initWithSourceNodeIdentifier:(unint64_t)identifier targetNodeIdentifier:(unint64_t)nodeIdentifier numberOfPaths:(unint64_t)paths
{
  v9.receiver = self;
  v9.super_class = KGGraphPath;
  result = [(KGGraphPath *)&v9 init];
  if (result)
  {
    result->_sourceNodeIdentifier = identifier;
    result->_targetNodeIdentifier = nodeIdentifier;
    result->_numberOfPaths = paths;
  }

  return result;
}

@end