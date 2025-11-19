@interface RTSourceHomeKit
- (BOOL)isEqual:(id)a3;
- (RTSourceHomeKit)initWithCoder:(id)a3;
- (RTSourceHomeKit)initWithIdentifier:(id)a3 primary:(BOOL)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTSourceHomeKit

- (RTSourceHomeKit)initWithIdentifier:(id)a3 primary:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = RTSourceHomeKit;
  v8 = [(RTSourceHomeKit *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, a3);
    v9->_primary = a4;
  }

  return v9;
}

- (RTSourceHomeKit)initWithCoder:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[RTSourceHomeKit initWithCoder:]";
      v13 = 1024;
      v14 = 34;
      _os_log_error_impl(&dword_1BF1C4000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: [aDecoder allowsKeyedCoding] (in %s:%d)", &v11, 0x12u);
    }
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v7 = [v4 decodeBoolForKey:@"primary"];

  v8 = [(RTSourceHomeKit *)self initWithIdentifier:v6 primary:v7];
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[RTSourceHomeKit encodeWithCoder:]";
      v10 = 1024;
      v11 = 45;
      _os_log_error_impl(&dword_1BF1C4000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: [aCoder allowsKeyedCoding] (in %s:%d)", &v8, 0x12u);
    }
  }

  v6 = [(RTSourceHomeKit *)self identifier];
  [v4 encodeObject:v6 forKey:@"identifier"];

  [v4 encodeBool:-[RTSourceHomeKit primary](self forKey:{"primary"), @"primary"}];
  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = RTSourceHomeKit;
  if ([(RTSource *)&v14 isEqual:v5])
  {
    v6 = v5;
    v7 = [(RTSourceHomeKit *)self identifier];
    if (v7 || ([v6 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = [(RTSourceHomeKit *)self identifier];
      v9 = [v6 identifier];
      v10 = [v8 isEqualToString:v9];

      if (v7)
      {
LABEL_9:

        v12 = [(RTSourceHomeKit *)self primary];
        v11 = v10 & (v12 ^ [v6 primary] ^ 1);

        goto LABEL_10;
      }
    }

    else
    {
      v10 = 1;
    }

    goto LABEL_9;
  }

  LOBYTE(v11) = 0;
LABEL_10:

  return v11;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = RTSourceHomeKit;
  v3 = [(RTSource *)&v8 hash];
  v4 = [(RTSourceHomeKit *)self identifier];
  v5 = [v4 hash];
  v6 = v5 ^ [(RTSourceHomeKit *)self primary];

  return v6 ^ v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = RTSourceHomeKit;
  v4 = [(RTSource *)&v10 description];
  v5 = [(RTSourceHomeKit *)self identifier];
  v6 = [(RTSourceHomeKit *)self primary];
  v7 = "NO";
  if (v6)
  {
    v7 = "YES";
  }

  v8 = [v3 stringWithFormat:@"%@, identifier, %@, primary, %s", v4, v5, v7];

  return v8;
}

@end