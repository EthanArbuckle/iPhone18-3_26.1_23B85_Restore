@interface KGGraphPath
- (KGGraphPath)initWithSourceNodeIdentifier:(unint64_t)a3 targetNodeIdentifier:(unint64_t)a4 numberOfPaths:(unint64_t)a5;
@end

@implementation KGGraphPath

- (KGGraphPath)initWithSourceNodeIdentifier:(unint64_t)a3 targetNodeIdentifier:(unint64_t)a4 numberOfPaths:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = KGGraphPath;
  result = [(KGGraphPath *)&v9 init];
  if (result)
  {
    result->_sourceNodeIdentifier = a3;
    result->_targetNodeIdentifier = a4;
    result->_numberOfPaths = a5;
  }

  return result;
}

@end