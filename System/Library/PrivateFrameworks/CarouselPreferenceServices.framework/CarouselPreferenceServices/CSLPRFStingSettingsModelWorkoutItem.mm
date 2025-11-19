@interface CSLPRFStingSettingsModelWorkoutItem
- (BOOL)isEqual:(id)a3;
- (CSLPRFStingSettingsModelWorkoutItem)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CSLPRFStingSettingsModelWorkoutItem

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_title withName:@"title" skipIfEmpty:1];
  [v3 appendString:self->_subtitle withName:@"subtitle" skipIfEmpty:1];
  [v3 appendString:self->_workoutIdentifier withName:@"workoutIdentifier" skipIfEmpty:1];
  v4 = [v3 build];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  title = self->_title;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __47__CSLPRFStingSettingsModelWorkoutItem_isEqual___block_invoke;
  v20[3] = &unk_278744E18;
  v7 = v4;
  v21 = v7;
  v8 = [v5 appendString:title counterpart:v20];
  subtitle = self->_subtitle;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __47__CSLPRFStingSettingsModelWorkoutItem_isEqual___block_invoke_2;
  v18[3] = &unk_278744E18;
  v10 = v7;
  v19 = v10;
  v11 = [v5 appendString:subtitle counterpart:v18];
  workoutIdentifier = self->_workoutIdentifier;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __47__CSLPRFStingSettingsModelWorkoutItem_isEqual___block_invoke_3;
  v16[3] = &unk_278744E18;
  v17 = v10;
  v13 = v10;
  v14 = [v5 appendString:workoutIdentifier counterpart:v16];
  LOBYTE(workoutIdentifier) = [v5 isEqual];

  return workoutIdentifier;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendString:self->_title];
  v5 = [v3 appendString:self->_subtitle];
  v6 = [v3 appendString:self->_workoutIdentifier];
  v7 = [v3 hash];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CSLPRFStingSettingsModelWorkoutItem);
  v5 = [(NSString *)self->_title copy];
  [(CSLPRFStingSettingsModelWorkoutItem *)v4 setTitle:v5];

  v6 = [(NSString *)self->_subtitle copy];
  [(CSLPRFStingSettingsModelWorkoutItem *)v4 setSubtitle:v6];

  v7 = [(NSString *)self->_workoutIdentifier copy];
  [(CSLPRFStingSettingsModelWorkoutItem *)v4 setWorkoutIdentifier:v7];

  return v4;
}

- (CSLPRFStingSettingsModelWorkoutItem)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CSLPRFStingSettingsModelWorkoutItem;
  v5 = [(CSLPRFStingSettingsModelWorkoutItem *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 decodeObjectForKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;

    v10 = [v4 decodeObjectForKey:@"workoutIdentifier"];
    workoutIdentifier = v5->_workoutIdentifier;
    v5->_workoutIdentifier = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 encodeObject:title forKey:@"title"];
  [v5 encodeObject:self->_subtitle forKey:@"subtitle"];
  [v5 encodeObject:self->_workoutIdentifier forKey:@"workoutIdentifier"];
}

@end