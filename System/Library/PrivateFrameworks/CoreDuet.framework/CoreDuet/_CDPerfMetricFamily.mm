@interface _CDPerfMetricFamily
+ (_CDPerfMetricFamily)perfMetricFamilyWithName:(id)name;
- (_CDPerfMetricFamily)initWithName:(id)name;
- (id)allPerfMetrics;
- (id)description;
- (id)perfMetricWithName:(id)name;
- (id)perfMetricWithName:(id)name string:(id)string;
@end

@implementation _CDPerfMetricFamily

+ (_CDPerfMetricFamily)perfMetricFamilyWithName:(id)name
{
  nameCopy = name;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = 0;
  if (_CDPerfMetricInitialized != -1)
  {
    +[_CDPerfMetricFamily perfMetricFamilyWithName:];
  }

  v4 = _CDPerfMetricQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48___CDPerfMetricFamily_perfMetricFamilyWithName___block_invoke;
  v8[3] = &unk_1E7367398;
  v9 = nameCopy;
  v10 = &v11;
  v5 = nameCopy;
  dispatch_sync(v4, v8);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (_CDPerfMetricFamily)initWithName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = _CDPerfMetricFamily;
  v6 = [(_CDPerfMetricFamily *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
    v8 = objc_opt_new();
    perfMetrics = v7->_perfMetrics;
    v7->_perfMetrics = v8;
  }

  return v7;
}

- (id)perfMetricWithName:(id)name string:(id)string
{
  nameCopy = name;
  stringCopy = string;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  v8 = _CDPerfMetricQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49___CDPerfMetricFamily_perfMetricWithName_string___block_invoke;
  v13[3] = &unk_1E73673C0;
  v13[4] = self;
  v14 = nameCopy;
  v15 = stringCopy;
  v16 = &v17;
  v9 = stringCopy;
  v10 = nameCopy;
  dispatch_sync(v8, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

- (id)perfMetricWithName:(id)name
{
  nameCopy = name;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v5 = _CDPerfMetricQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42___CDPerfMetricFamily_perfMetricWithName___block_invoke;
  block[3] = &unk_1E7367248;
  v10 = nameCopy;
  v11 = &v12;
  block[4] = self;
  v6 = nameCopy;
  dispatch_sync(v5, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)allPerfMetrics
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__0;
  v9 = __Block_byref_object_dispose__0;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37___CDPerfMetricFamily_allPerfMetrics__block_invoke;
  v4[3] = &unk_1E7367398;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(_CDPerfMetricQueue, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  name = [(_CDPerfMetricFamily *)self name];
  v7 = MEMORY[0x1E696AD98];
  perfMetrics = [(_CDPerfMetricFamily *)self perfMetrics];
  v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(perfMetrics, "count")}];
  v10 = [v3 stringWithFormat:@"%@: { name=%@, metrics.count=%@ }", v5, name, v9];

  return v10;
}

@end