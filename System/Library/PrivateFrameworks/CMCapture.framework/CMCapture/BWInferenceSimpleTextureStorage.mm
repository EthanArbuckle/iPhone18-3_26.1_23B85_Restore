@interface BWInferenceSimpleTextureStorage
- (BWInferenceSimpleTextureStorage)init;
- (void)dealloc;
- (void)setEntry:(id *)entry forRequirement:(id)requirement;
- (void)setTexture:(id)texture forRequirement:(id)requirement;
@end

@implementation BWInferenceSimpleTextureStorage

- (BWInferenceSimpleTextureStorage)init
{
  v7.receiver = self;
  v7.super_class = BWInferenceSimpleTextureStorage;
  v2 = [(BWInferenceSimpleTextureStorage *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AE10] pointerFunctionsWithOptions:1027];
    [v3 setSizeFunction:BWInferenceTextureStorageEntrySize];
    [v3 setRelinquishFunction:BWInferenceTextureStorageEntryRelinquish];
    v4 = [MEMORY[0x1E696AD18] bw_strongVideoRequirementToMapTableWithValueFunctions:v3];
    v2->_entriesByRequirement = v4;
    v5 = v4;
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceSimpleTextureStorage;
  [(BWInferenceSimpleTextureStorage *)&v3 dealloc];
}

- (void)setEntry:(id *)entry forRequirement:(id)requirement
{
  v7 = entry->var0.var0;
  v8 = entry->var1;
  entriesByRequirement = self->_entriesByRequirement;

  [(NSMapTable *)entriesByRequirement setObject:entry forKey:requirement];
}

- (void)setTexture:(id)texture forRequirement:(id)requirement
{
  v6[0] = texture;
  v6[1] = 0;
  [(NSMapTable *)self->_entriesByRequirement setObject:v6 forKey:requirement];
}

@end