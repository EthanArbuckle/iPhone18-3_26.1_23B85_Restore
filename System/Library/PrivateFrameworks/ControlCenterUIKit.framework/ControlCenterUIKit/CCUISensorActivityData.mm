@interface CCUISensorActivityData
+ (id)_genericLocationSystemServiceActivity;
+ (id)stringFromSensorType:(unint64_t)type;
- (BOOL)isEqual:(id)equal;
- (id)debugDescription;
- (unint64_t)hash;
@end

@implementation CCUISensorActivityData

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendUnsignedInteger:{-[CCUISensorActivityData sensorType](self, "sensorType")}];
  displayName = [(CCUISensorActivityData *)self displayName];
  v6 = [builder appendObject:displayName];

  executableDisplayName = [(CCUISensorActivityData *)self executableDisplayName];
  v8 = [builder appendObject:executableDisplayName];

  bundleIdentifier = [(CCUISensorActivityData *)self bundleIdentifier];
  v10 = [builder appendObject:bundleIdentifier];

  attributionGroup = [(CCUISensorActivityData *)self attributionGroup];
  v12 = [builder appendObject:attributionGroup];

  website = [(CCUISensorActivityData *)self website];
  v14 = [builder appendObject:website];

  v15 = [builder appendBool:{-[CCUISensorActivityData isSystemService](self, "isSystemService")}];
  v16 = [builder appendBool:{-[CCUISensorActivityData usedRecently](self, "usedRecently")}];
  v17 = [builder hash];

  return v17;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [CCUISensorActivityData stringFromSensorType:[(CCUISensorActivityData *)self sensorType]];
  bundleIdentifier = [(CCUISensorActivityData *)self bundleIdentifier];
  displayName = [(CCUISensorActivityData *)self displayName];
  executableDisplayName = [(CCUISensorActivityData *)self executableDisplayName];
  attributionGroup = [(CCUISensorActivityData *)self attributionGroup];
  website = [(CCUISensorActivityData *)self website];
  usedRecently = [(CCUISensorActivityData *)self usedRecently];
  v13 = @"NO";
  if (usedRecently)
  {
    v13 = @"YES";
  }

  v14 = [v3 stringWithFormat:@"<%@: %p> (sensor:%@ bundle:%@ display:%@ executableDisplayName:%@ attributionGroup:%@ domain:%@ recently:%@)", v5, self, v6, bundleIdentifier, displayName, executableDisplayName, attributionGroup, website, v13];

  return v14;
}

+ (id)_genericLocationSystemServiceActivity
{
  v2 = objc_alloc_init(CCUISensorActivityData);
  v3 = +[CCUISensorAttributionEntity genericLocationSystemServiceEntity];
  [(CCUISensorActivityData *)v2 setSensorType:2];
  bundleIdentifier = [v3 bundleIdentifier];
  [(CCUISensorActivityData *)v2 setBundleIdentifier:bundleIdentifier];

  [(CCUISensorActivityData *)v2 setIsSystemService:1];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v29 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
    sensorType = [(CCUISensorActivityData *)self sensorType];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __34__CCUISensorActivityData_isEqual___block_invoke;
    v48[3] = &unk_1E83EA6E0;
    v7 = equalCopy;
    v49 = v7;
    v8 = [v5 appendUnsignedInteger:sensorType counterpart:v48];
    displayName = [(CCUISensorActivityData *)self displayName];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __34__CCUISensorActivityData_isEqual___block_invoke_2;
    v46[3] = &unk_1E83EA708;
    v10 = v7;
    v47 = v10;
    v11 = [v5 appendString:displayName counterpart:v46];

    executableDisplayName = [(CCUISensorActivityData *)self executableDisplayName];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __34__CCUISensorActivityData_isEqual___block_invoke_3;
    v44[3] = &unk_1E83EA708;
    v13 = v10;
    v45 = v13;
    v14 = [v5 appendString:executableDisplayName counterpart:v44];

    bundleIdentifier = [(CCUISensorActivityData *)self bundleIdentifier];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __34__CCUISensorActivityData_isEqual___block_invoke_4;
    v42[3] = &unk_1E83EA708;
    v16 = v13;
    v43 = v16;
    v17 = [v5 appendString:bundleIdentifier counterpart:v42];

    attributionGroup = [(CCUISensorActivityData *)self attributionGroup];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __34__CCUISensorActivityData_isEqual___block_invoke_5;
    v40[3] = &unk_1E83EA708;
    v19 = v16;
    v41 = v19;
    v20 = [v5 appendString:attributionGroup counterpart:v40];

    website = [(CCUISensorActivityData *)self website];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __34__CCUISensorActivityData_isEqual___block_invoke_6;
    v38[3] = &unk_1E83EA708;
    v22 = v19;
    v39 = v22;
    v23 = [v5 appendString:website counterpart:v38];

    isSystemService = [(CCUISensorActivityData *)self isSystemService];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __34__CCUISensorActivityData_isEqual___block_invoke_7;
    v36[3] = &unk_1E83EA730;
    v25 = v22;
    v37 = v25;
    v26 = [v5 appendBool:isSystemService counterpart:v36];
    usedRecently = [(CCUISensorActivityData *)self usedRecently];
    v31 = MEMORY[0x1E69E9820];
    v32 = 3221225472;
    v33 = __34__CCUISensorActivityData_isEqual___block_invoke_8;
    v34 = &unk_1E83EA730;
    v35 = v25;
    v28 = [v5 appendBool:usedRecently counterpart:&v31];
    v29 = [v5 isEqual];
  }

  return v29;
}

+ (id)stringFromSensorType:(unint64_t)type
{
  if (type - 1 > 2)
  {
    return @"Camera";
  }

  else
  {
    return off_1E83EA750[type - 1];
  }
}

@end