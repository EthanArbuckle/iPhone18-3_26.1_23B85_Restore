@interface GKCloudPlayer
+ (void)getCurrentSignedInPlayerForContainer:(NSString *)containerName completionHandler:(void *)handler;
- (BOOL)isEqual:(id)a3;
- (GKCloudPlayer)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GKCloudPlayer

+ (void)getCurrentSignedInPlayerForContainer:(NSString *)containerName completionHandler:(void *)handler
{
  v4 = MEMORY[0x277CCA9B8];
  v5 = handler;
  v6 = [v4 userErrorForCode:34 underlyingError:0];
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKDeveloper;
  if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
  {
    [GKCloudPlayer getCurrentSignedInPlayerForContainer:v8 completionHandler:?];
  }

  v5[2](v5, 0, v6);
}

- (GKCloudPlayer)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GKCloudPlayer;
  v5 = [(GKCloudPlayer *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(GKCloudPlayer *)v5 setIdentifier:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(GKCloudPlayer *)v5 setName:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(GKCloudPlayer *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(GKCloudPlayer *)self name];
  [v4 encodeObject:v6 forKey:@"name"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4;
  if (v4)
  {
    [v4 setIdentifier:self->_identifier];
    [v5 setName:self->_name];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(GKCloudPlayer *)self identifier];
    v7 = [v5 identifier];

    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(GKCloudPlayer *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = GKCloudPlayer;
  v4 = [(GKCloudPlayer *)&v9 description];
  v5 = [(GKCloudPlayer *)self identifier];
  v6 = [(GKCloudPlayer *)self name];
  v7 = [v3 stringWithFormat:@"%@, id: %@, name: %@", v4, v5, v6];

  return v7;
}

+ (void)getCurrentSignedInPlayerForContainer:(os_log_t)log completionHandler:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = @"GKCloudPlayer";
  _os_log_error_impl(&dword_227904000, log, OS_LOG_TYPE_ERROR, "WARNING: %{public}@ is obsoleted and does nothing.", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end