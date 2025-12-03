@interface BWInferenceDependencyProvider
- (BWInferenceDependencyProvider)init;
- (NSArray)allInputVideoDependencies;
- (NSArray)allOutputVideoDependencies;
- (void)dealloc;
- (void)setDependenciesByInputVideoRequirements:(id)requirements;
- (void)setDependenciesByOutputVideoRequirements:(id)requirements;
@end

@implementation BWInferenceDependencyProvider

- (BWInferenceDependencyProvider)init
{
  v7.receiver = self;
  v7.super_class = BWInferenceDependencyProvider;
  v2 = [(BWInferenceDependencyProvider *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AE10] pointerFunctionsWithOptions:0];
    [v3 setHashFunction:satisfiedVideoRequirementHash];
    [v3 setIsEqualFunction:satisfiedVideoRequirementCheck];
    v4 = [MEMORY[0x1E696AE10] pointerFunctionsWithOptions:0];
    v2->_dependenciesByInputVideoRequirements = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyPointerFunctions:v3 valuePointerFunctions:v4 capacity:0];
    v5 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyPointerFunctions:v3 valuePointerFunctions:v4 capacity:0];
    v2->_providedVideoRequirementsByAttachedMediaKey = 0;
    v2->_consumedVideoAttachedMediaKeys = 0;
    v2->_dependenciesByOutputVideoRequirements = v5;
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceDependencyProvider;
  [(BWInferenceDependencyProvider *)&v3 dealloc];
}

- (NSArray)allInputVideoDependencies
{
  dictionaryRepresentation = [(NSMapTable *)self->_dependenciesByInputVideoRequirements dictionaryRepresentation];

  return [(NSDictionary *)dictionaryRepresentation allKeys];
}

- (NSArray)allOutputVideoDependencies
{
  dictionaryRepresentation = [(NSMapTable *)self->_dependenciesByOutputVideoRequirements dictionaryRepresentation];

  return [(NSDictionary *)dictionaryRepresentation allKeys];
}

- (void)setDependenciesByInputVideoRequirements:(id)requirements
{
  dependenciesByInputVideoRequirements = self->_dependenciesByInputVideoRequirements;
  if (dependenciesByInputVideoRequirements != requirements)
  {

    self->_dependenciesByInputVideoRequirements = requirements;
  }
}

- (void)setDependenciesByOutputVideoRequirements:(id)requirements
{
  dependenciesByOutputVideoRequirements = self->_dependenciesByOutputVideoRequirements;
  if (dependenciesByOutputVideoRequirements != requirements)
  {

    self->_dependenciesByOutputVideoRequirements = requirements;
  }
}

@end