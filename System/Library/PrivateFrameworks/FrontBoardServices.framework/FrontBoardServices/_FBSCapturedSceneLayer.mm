@interface _FBSCapturedSceneLayer
- (BOOL)isEqual:(id)equal;
- (_FBSCapturedSceneLayer)initWithXPCDictionary:(id)dictionary;
- (id)_initWithLayer:(id)layer;
- (int64_t)compare:(id)compare;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation _FBSCapturedSceneLayer

- (id)_initWithLayer:(id)layer
{
  layerCopy = layer;
  if (!layerCopy)
  {
    [_FBSCapturedSceneLayer _initWithLayer:a2];
  }

  v6 = layerCopy;
  _init = [(FBSSceneLayer *)self _init];
  v8 = _init;
  if (_init)
  {
    _init[6] = *(v6 + 6);
    objc_storeStrong(_init + 1, *(v6 + 1));
    *(v8 + 4) = *(v6 + 4);
    v8[3] = *(v6 + 3);
    objc_storeStrong(v8 + 5, *(v6 + 5));
    v8[7] = *(v6 + 7);
    objc_storeStrong(v8 + 8, *(v6 + 8));
    v8[9] = mach_absolute_time();
    v9 = v8[1];
    if (v9)
    {
      [v9 level];
      v11 = v10;
    }

    else
    {
      v11 = *(v6 + 4);
    }

    *(v8 + 4) = v11;
  }

  return v8;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  level = self->super._level;
  [compareCopy level];
  if (level >= v6)
  {
    if (level > v6)
    {
      v7 = 1;
      goto LABEL_7;
    }

    captureTime = self->_captureTime;
    v9 = compareCopy[9];
    if (captureTime >= v9)
    {
      v7 = captureTime > v9;
      goto LABEL_7;
    }
  }

  v7 = -1;
LABEL_7:

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = _FBSCapturedSceneLayer;
  v6 = [(FBSSceneLayer *)&v8 isEqual:equalCopy]&& (v5 = objc_opt_class(), v5 == objc_opt_class()) && self->_captureTime == equalCopy[9];

  return v6;
}

- (_FBSCapturedSceneLayer)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  _init = [(FBSSceneLayer *)self _init];
  if (_init)
  {
    _init[6] = xpc_dictionary_get_uint64(dictionaryCopy, "t");
    *(_init + 4) = xpc_dictionary_get_double(dictionaryCopy, "l");
    _init[9] = xpc_dictionary_get_uint64(dictionaryCopy, "ts");
    *(_init + 4) = xpc_dictionary_get_uint64(dictionaryCopy, "cid");
    _init[3] = xpc_dictionary_get_uint64(dictionaryCopy, "rid");
    _init[7] = xpc_dictionary_get_uint64(dictionaryCopy, "a");
    BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
  }

  return 0;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  xdict = dictionary;
  xpc_dictionary_set_uint64(xdict, "t", self->super._type);
  xpc_dictionary_set_double(xdict, "l", self->super._level);
  xpc_dictionary_set_uint64(xdict, "ts", self->_captureTime);
  contextID = self->super._contextID;
  if (contextID)
  {
    xpc_dictionary_set_uint64(xdict, "cid", contextID);
  }

  renderID = self->super._renderID;
  if (renderID)
  {
    xpc_dictionary_set_uint64(xdict, "rid", renderID);
  }

  alignment = self->super._alignment;
  if (alignment >= 1)
  {
    xpc_dictionary_set_uint64(xdict, "a", alignment);
  }

  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
}

- (void)_initWithLayer:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"layer", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

@end