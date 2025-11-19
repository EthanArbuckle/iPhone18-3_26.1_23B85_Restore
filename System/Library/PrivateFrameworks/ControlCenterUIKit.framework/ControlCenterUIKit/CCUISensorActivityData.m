@interface CCUISensorActivityData
+ (id)_genericLocationSystemServiceActivity;
+ (id)stringFromSensorType:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (id)debugDescription;
- (unint64_t)hash;
@end

@implementation CCUISensorActivityData

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendUnsignedInteger:{-[CCUISensorActivityData sensorType](self, "sensorType")}];
  v5 = [(CCUISensorActivityData *)self displayName];
  v6 = [v3 appendObject:v5];

  v7 = [(CCUISensorActivityData *)self executableDisplayName];
  v8 = [v3 appendObject:v7];

  v9 = [(CCUISensorActivityData *)self bundleIdentifier];
  v10 = [v3 appendObject:v9];

  v11 = [(CCUISensorActivityData *)self attributionGroup];
  v12 = [v3 appendObject:v11];

  v13 = [(CCUISensorActivityData *)self website];
  v14 = [v3 appendObject:v13];

  v15 = [v3 appendBool:{-[CCUISensorActivityData isSystemService](self, "isSystemService")}];
  v16 = [v3 appendBool:{-[CCUISensorActivityData usedRecently](self, "usedRecently")}];
  v17 = [v3 hash];

  return v17;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [CCUISensorActivityData stringFromSensorType:[(CCUISensorActivityData *)self sensorType]];
  v7 = [(CCUISensorActivityData *)self bundleIdentifier];
  v8 = [(CCUISensorActivityData *)self displayName];
  v9 = [(CCUISensorActivityData *)self executableDisplayName];
  v10 = [(CCUISensorActivityData *)self attributionGroup];
  v11 = [(CCUISensorActivityData *)self website];
  v12 = [(CCUISensorActivityData *)self usedRecently];
  v13 = @"NO";
  if (v12)
  {
    v13 = @"YES";
  }

  v14 = [v3 stringWithFormat:@"<%@: %p> (sensor:%@ bundle:%@ display:%@ executableDisplayName:%@ attributionGroup:%@ domain:%@ recently:%@)", v5, self, v6, v7, v8, v9, v10, v11, v13];

  return v14;
}

+ (id)_genericLocationSystemServiceActivity
{
  v2 = objc_alloc_init(CCUISensorActivityData);
  v3 = +[CCUISensorAttributionEntity genericLocationSystemServiceEntity];
  [(CCUISensorActivityData *)v2 setSensorType:2];
  v4 = [v3 bundleIdentifier];
  [(CCUISensorActivityData *)v2 setBundleIdentifier:v4];

  [(CCUISensorActivityData *)v2 setIsSystemService:1];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v29 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
    v6 = [(CCUISensorActivityData *)self sensorType];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __34__CCUISensorActivityData_isEqual___block_invoke;
    v48[3] = &unk_1E83EA6E0;
    v7 = v4;
    v49 = v7;
    v8 = [v5 appendUnsignedInteger:v6 counterpart:v48];
    v9 = [(CCUISensorActivityData *)self displayName];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __34__CCUISensorActivityData_isEqual___block_invoke_2;
    v46[3] = &unk_1E83EA708;
    v10 = v7;
    v47 = v10;
    v11 = [v5 appendString:v9 counterpart:v46];

    v12 = [(CCUISensorActivityData *)self executableDisplayName];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __34__CCUISensorActivityData_isEqual___block_invoke_3;
    v44[3] = &unk_1E83EA708;
    v13 = v10;
    v45 = v13;
    v14 = [v5 appendString:v12 counterpart:v44];

    v15 = [(CCUISensorActivityData *)self bundleIdentifier];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __34__CCUISensorActivityData_isEqual___block_invoke_4;
    v42[3] = &unk_1E83EA708;
    v16 = v13;
    v43 = v16;
    v17 = [v5 appendString:v15 counterpart:v42];

    v18 = [(CCUISensorActivityData *)self attributionGroup];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __34__CCUISensorActivityData_isEqual___block_invoke_5;
    v40[3] = &unk_1E83EA708;
    v19 = v16;
    v41 = v19;
    v20 = [v5 appendString:v18 counterpart:v40];

    v21 = [(CCUISensorActivityData *)self website];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __34__CCUISensorActivityData_isEqual___block_invoke_6;
    v38[3] = &unk_1E83EA708;
    v22 = v19;
    v39 = v22;
    v23 = [v5 appendString:v21 counterpart:v38];

    v24 = [(CCUISensorActivityData *)self isSystemService];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __34__CCUISensorActivityData_isEqual___block_invoke_7;
    v36[3] = &unk_1E83EA730;
    v25 = v22;
    v37 = v25;
    v26 = [v5 appendBool:v24 counterpart:v36];
    v27 = [(CCUISensorActivityData *)self usedRecently];
    v31 = MEMORY[0x1E69E9820];
    v32 = 3221225472;
    v33 = __34__CCUISensorActivityData_isEqual___block_invoke_8;
    v34 = &unk_1E83EA730;
    v35 = v25;
    v28 = [v5 appendBool:v27 counterpart:&v31];
    v29 = [v5 isEqual];
  }

  return v29;
}

+ (id)stringFromSensorType:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return @"Camera";
  }

  else
  {
    return off_1E83EA750[a3 - 1];
  }
}

@end