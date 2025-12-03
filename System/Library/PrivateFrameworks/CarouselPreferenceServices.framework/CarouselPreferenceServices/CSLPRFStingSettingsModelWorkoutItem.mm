@interface CSLPRFStingSettingsModelWorkoutItem
- (BOOL)isEqual:(id)equal;
- (CSLPRFStingSettingsModelWorkoutItem)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CSLPRFStingSettingsModelWorkoutItem

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_title withName:@"title" skipIfEmpty:1];
  [v3 appendString:self->_subtitle withName:@"subtitle" skipIfEmpty:1];
  [v3 appendString:self->_workoutIdentifier withName:@"workoutIdentifier" skipIfEmpty:1];
  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  title = self->_title;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __47__CSLPRFStingSettingsModelWorkoutItem_isEqual___block_invoke;
  v20[3] = &unk_278744E18;
  v7 = equalCopy;
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
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendString:self->_title];
  v5 = [builder appendString:self->_subtitle];
  v6 = [builder appendString:self->_workoutIdentifier];
  v7 = [builder hash];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (CSLPRFStingSettingsModelWorkoutItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CSLPRFStingSettingsModelWorkoutItem;
  v5 = [(CSLPRFStingSettingsModelWorkoutItem *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectForKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;

    v10 = [coderCopy decodeObjectForKey:@"workoutIdentifier"];
    workoutIdentifier = v5->_workoutIdentifier;
    v5->_workoutIdentifier = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"title"];
  [coderCopy encodeObject:self->_subtitle forKey:@"subtitle"];
  [coderCopy encodeObject:self->_workoutIdentifier forKey:@"workoutIdentifier"];
}

@end