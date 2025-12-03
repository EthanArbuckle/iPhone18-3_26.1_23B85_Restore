@interface MIOMutableModelDescription
- (void)setShortDescription:(id)description forInputFeatureWithName:(id)name;
- (void)setShortDescription:(id)description forInputFeatureWithName:(id)name functionName:(id)functionName;
- (void)setShortDescription:(id)description forOutputFeatureWithName:(id)name;
- (void)setShortDescription:(id)description forOutputFeatureWithName:(id)name functionName:(id)functionName;
- (void)setShortDescription:(id)description forStateFeatureWithName:(id)name;
- (void)setShortDescription:(id)description forStateFeatureWithName:(id)name functionName:(id)functionName;
@end

@implementation MIOMutableModelDescription

- (void)setShortDescription:(id)description forInputFeatureWithName:(id)name
{
  descriptionCopy = description;
  nameCopy = name;
  defaultFunctionName = [(MIOModelDescription *)self defaultFunctionName];
  [(MIOModelDescription *)self _setShortDescription:descriptionCopy forInputFeatureWithName:nameCopy functionName:defaultFunctionName];
}

- (void)setShortDescription:(id)description forOutputFeatureWithName:(id)name
{
  descriptionCopy = description;
  nameCopy = name;
  defaultFunctionName = [(MIOModelDescription *)self defaultFunctionName];
  [(MIOModelDescription *)self _setShortDescription:descriptionCopy forOutputFeatureWithName:nameCopy functionName:defaultFunctionName];
}

- (void)setShortDescription:(id)description forStateFeatureWithName:(id)name
{
  descriptionCopy = description;
  nameCopy = name;
  defaultFunctionName = [(MIOModelDescription *)self defaultFunctionName];
  [(MIOModelDescription *)self _setShortDescription:descriptionCopy forStateFeatureWithName:nameCopy functionName:defaultFunctionName];
}

- (void)setShortDescription:(id)description forInputFeatureWithName:(id)name functionName:(id)functionName
{
  descriptionCopy = description;
  nameCopy = name;
  functionNameCopy = functionName;
  v10 = descriptionCopy;
  v11 = functionNameCopy;
  defaultFunctionName = functionNameCopy;
  if (!functionNameCopy)
  {
    defaultFunctionName = [(MIOModelDescription *)self defaultFunctionName];
    v10 = descriptionCopy;
  }

  [(MIOModelDescription *)self _setShortDescription:v10 forInputFeatureWithName:nameCopy functionName:defaultFunctionName];
  if (!v11)
  {
  }
}

- (void)setShortDescription:(id)description forOutputFeatureWithName:(id)name functionName:(id)functionName
{
  descriptionCopy = description;
  nameCopy = name;
  functionNameCopy = functionName;
  v10 = descriptionCopy;
  v11 = functionNameCopy;
  defaultFunctionName = functionNameCopy;
  if (!functionNameCopy)
  {
    defaultFunctionName = [(MIOModelDescription *)self defaultFunctionName];
    v10 = descriptionCopy;
  }

  [(MIOModelDescription *)self _setShortDescription:v10 forOutputFeatureWithName:nameCopy functionName:defaultFunctionName];
  if (!v11)
  {
  }
}

- (void)setShortDescription:(id)description forStateFeatureWithName:(id)name functionName:(id)functionName
{
  descriptionCopy = description;
  nameCopy = name;
  functionNameCopy = functionName;
  v10 = descriptionCopy;
  v11 = functionNameCopy;
  defaultFunctionName = functionNameCopy;
  if (!functionNameCopy)
  {
    defaultFunctionName = [(MIOModelDescription *)self defaultFunctionName];
    v10 = descriptionCopy;
  }

  [(MIOModelDescription *)self _setShortDescription:v10 forStateFeatureWithName:nameCopy functionName:defaultFunctionName];
  if (!v11)
  {
  }
}

@end