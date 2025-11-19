@interface DBSmartWidgetHomePrediction
- (BOOL)updateWithPrediction:(id)a3;
- (DBSmartWidgetHomePrediction)initWithGarageDoor:(id)a3;
- (double)value;
- (id)backgroundColorWithTraitCollection:(id)a3;
- (id)buttonCompositingFilterWithTraitCollection:(id)a3;
- (id)debugScoreText;
- (id)imageCompositingFilterWithTraitCollection:(id)a3;
- (id)managerConfigurationWithAction:(id)a3;
- (id)primaryActionBlock;
- (id)subtitle;
- (id)symbol;
- (id)tintColorWithTraitCollection:(id)a3;
- (id)title;
- (id)uniqueIdentifier;
- (int64_t)_iconType;
- (int64_t)alert;
- (int64_t)tieBreakScore;
- (void)garageDoor:(id)a3 didUpdateDoorState:(int64_t)a4;
- (void)garageDoor:(id)a3 didUpdateObstructionDetected:(BOOL)a4;
- (void)garageDoor:(id)a3 didUpdateTargetDoorState:(int64_t)a4;
- (void)serviceDidUpdate:(id)a3;
@end

@implementation DBSmartWidgetHomePrediction

- (DBSmartWidgetHomePrediction)initWithGarageDoor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DBSmartWidgetHomePrediction;
  v6 = [(DBSmartWidgetPrediction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_garageDoor, a3);
    [(DBGarageDoor *)v7->_garageDoor addObserver:v7];
  }

  return v7;
}

- (id)uniqueIdentifier
{
  v2 = [(DBSmartWidgetHomePrediction *)self garageDoor];
  v3 = [v2 uniqueIdentifier];

  return v3;
}

- (int64_t)alert
{
  v2 = [(DBSmartWidgetHomePrediction *)self garageDoor];
  v3 = [v2 doorState];

  v4 = (v3 + 4) > 8 || ((1 << (v3 + 4)) & 0x107) == 0;
  return !v4 || v3 == 100;
}

- (id)title
{
  v2 = [(DBSmartWidgetHomePrediction *)self garageDoor];
  v3 = [v2 name];

  return v3;
}

- (id)subtitle
{
  v3 = [(DBSmartWidgetHomePrediction *)self garageDoor];
  v4 = [v3 home];
  v5 = [v4 inAllowedPeriod];

  if ((v5 & 1) == 0)
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
    v17 = [v7 localizedStringForKey:@"SMARTWIDGET_GARGAGEDOOR_OUTSIDE_SCHEDULE" value:&stru_285A57218 table:@"CarPlayApp"];
    goto LABEL_8;
  }

  v6 = [(DBSmartWidgetHomePrediction *)self garageDoor];
  v7 = NSStringFromDoorState([v6 doorState]);

  v8 = [MEMORY[0x277CF89D0] smartWidgetRelaxHomeInRangeCheck];
  v9 = [v8 valueBool];

  if (v9)
  {
    v10 = [(DBSmartWidgetHomePrediction *)self garageDoor];
    v11 = [v10 home];
    v12 = [v11 inHomeRange];

    if ((v12 & 1) == 0)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"(!H) %@", v7];

      v7 = v13;
    }

    v14 = [(DBSmartWidgetHomePrediction *)self garageDoor];
    v15 = [v14 home];
    v16 = [v15 inLocationRange];

    if ((v16 & 1) == 0)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"(!L) %@", v7];
LABEL_8:
      v18 = v17;

      v7 = v18;
    }
  }

  return v7;
}

- (id)primaryActionBlock
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__DBSmartWidgetHomePrediction_primaryActionBlock__block_invoke;
  aBlock[3] = &unk_278F01580;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

void __49__DBSmartWidgetHomePrediction_primaryActionBlock__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) garageDoor];
  v3 = [v2 targetDoorState];

  v4 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __49__DBSmartWidgetHomePrediction_primaryActionBlock__block_invoke_cold_1(v1, v3);
  }

  if (v3)
  {
    if (v3 != 1)
    {
      return;
    }

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = [*v1 garageDoor];
  [v6 setTargetDoorState:v5];
}

- (id)managerConfigurationWithAction:(id)a3
{
  v4 = a3;
  v5 = [DBSmartStackManagerConfiguration alloc];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
  v7 = [v6 localizedStringForKey:@"SMARTSTACK_ACTIONSHEET_SIRI_SUGGESTIONS" value:&stru_285A57218 table:@"CarPlayApp"];
  v8 = [(DBSmartWidgetHomePrediction *)self title];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
  v10 = [v9 localizedStringForKey:@"SMARTSTACK_ACTIONSHEET_CLEAR" value:&stru_285A57218 table:@"CarPlayApp"];
  v11 = [(DBSmartStackManagerConfiguration *)v5 initWithAlertTitle:v7 alertSubtitle:v8 actionTitle:v10 action:v4];

  return v11;
}

- (int64_t)_iconType
{
  v2 = [(DBSmartWidgetHomePrediction *)self garageDoor];
  v3 = [v2 doorState];

  v4 = v3 + 4;
  return (v3 + 4) <= 8 && (((1 << v4) & 0x10F) != 0 || ((1 << v4) & 0x60) != 0) || v3 == 100;
}

- (id)tintColorWithTraitCollection:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__DBSmartWidgetHomePrediction_tintColorWithTraitCollection___block_invoke;
  v5[3] = &unk_278F01E80;
  v5[4] = self;
  v3 = [MEMORY[0x277D75348] colorWithDynamicProvider:v5];

  return v3;
}

id __60__DBSmartWidgetHomePrediction_tintColorWithTraitCollection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _iconType];
  if (v2 == 1)
  {
    v3 = [MEMORY[0x277D75348] systemMintColor];
  }

  else
  {
    if (v2)
    {
      goto LABEL_6;
    }

    v3 = [MEMORY[0x277D75348] labelColor];
  }

  v4 = v3;
  v5 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
  v1 = [v4 resolvedColorWithTraitCollection:v5];

LABEL_6:

  return v1;
}

- (id)backgroundColorWithTraitCollection:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__DBSmartWidgetHomePrediction_backgroundColorWithTraitCollection___block_invoke;
  v5[3] = &unk_278F01E80;
  v5[4] = self;
  v3 = [MEMORY[0x277D75348] colorWithDynamicProvider:v5];

  return v3;
}

id __66__DBSmartWidgetHomePrediction_backgroundColorWithTraitCollection___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [*(a1 + 32) _iconType];
  if (v5 != 1)
  {
    if (v5)
    {
      goto LABEL_11;
    }

    v6 = [MEMORY[0x277D75348] systemMintColor];
    v7 = MEMORY[0x277D75C80];
    v8 = 1;
    goto LABEL_9;
  }

  v9 = [v4 userInterfaceStyle];
  if (!v9 || v9 == 2)
  {
    v6 = [MEMORY[0x277D75348] secondarySystemFillColor];
    v7 = MEMORY[0x277D75C80];
    v8 = 2;
LABEL_9:
    v10 = [v7 traitCollectionWithUserInterfaceStyle:v8];
    v2 = [v6 resolvedColorWithTraitCollection:v10];

    goto LABEL_10;
  }

  if (v9 != 1)
  {
    goto LABEL_11;
  }

  v6 = [MEMORY[0x277D75348] blackColor];
  v2 = [v6 colorWithAlphaComponent:0.4];
LABEL_10:

LABEL_11:

  return v2;
}

- (id)symbol
{
  v3 = [(DBSmartWidgetHomePrediction *)self garageDoor];
  v4 = [v3 doorType];

  if (v4 < 2)
  {
    v6 = [(DBSmartWidgetHomePrediction *)self _iconType];
    if (!v6)
    {
      return @"door.garage.open";
    }

    if (v6 == 1)
    {
      return @"door.garage.closed";
    }
  }

  else if (v4 != 2)
  {
    if (v4 != 3)
    {
      return result;
    }

    goto LABEL_11;
  }

  v7 = [(DBSmartWidgetHomePrediction *)self _iconType];
  if (!v7)
  {
    return @"door.garage.double.bay.open";
  }

  if (v7 == 1)
  {
    return @"door.garage.double.bay.closed";
  }

LABEL_11:
  if ([(DBSmartWidgetHomePrediction *)self _iconType])
  {
    return @"pedestrian.gate.closed";
  }

  else
  {
    return @"pedestrian.gate.open";
  }
}

- (id)buttonCompositingFilterWithTraitCollection:(id)a3
{
  v4 = a3;
  if ([(DBSmartWidgetHomePrediction *)self _iconType]== 1)
  {
    v5 = [v4 userInterfaceStyle];
    if (v5 <= 2)
    {
      self = [MEMORY[0x277CD9EA0] filterWithType:**(&unk_278F01EA0 + v5)];
    }
  }

  else
  {
    self = 0;
  }

  return self;
}

- (id)imageCompositingFilterWithTraitCollection:(id)a3
{
  v4 = a3;
  if (-[DBSmartWidgetHomePrediction _iconType](self, "_iconType") || [v4 userInterfaceStyle] > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5E8]];
  }

  return v5;
}

- (int64_t)tieBreakScore
{
  v2 = [(DBSmartWidgetHomePrediction *)self garageDoor];
  v3 = [v2 lastWritten];

  return v3;
}

- (BOOL)updateWithPrediction:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v10.receiver = self;
  v10.super_class = DBSmartWidgetHomePrediction;
  [(DBSmartWidgetPrediction *)&v10 updateWithPrediction:v6];
  v7 = [v5 predictedObject];
  garageDoor = self->_garageDoor;
  self->_garageDoor = v7;

  [(DBSmartWidgetPrediction *)self predictionDidUpdate];
  return 1;
}

- (id)debugScoreText
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = DBSmartWidgetHomePrediction;
  v4 = [(DBSmartWidgetPrediction *)&v12 debugScoreText];
  v5 = [(DBSmartWidgetHomePrediction *)self garageDoor];
  v6 = [v5 home];
  v7 = [v6 stateDescription];
  v8 = [(DBSmartWidgetHomePrediction *)self garageDoor];
  v9 = [v8 stateDescription];
  v10 = [v3 stringWithFormat:@"%@\n%@\n%@", v4, v7, v9];

  return v10;
}

- (double)value
{
  v2 = [(DBSmartWidgetHomePrediction *)self garageDoor];
  [v2 distance];
  v4 = v3;

  return v4;
}

- (void)serviceDidUpdate:(id)a3
{
  v4 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(DBSmartWidgetHomePrediction *)self serviceDidUpdate:v4];
  }

  [(DBSmartWidgetPrediction *)self predictionDidUpdate];
}

- (void)garageDoor:(id)a3 didUpdateDoorState:(int64_t)a4
{
  v6 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [DBSmartWidgetHomePrediction garageDoor:a4 didUpdateDoorState:?];
  }

  [(DBSmartWidgetPrediction *)self predictionDidUpdate];
}

- (void)garageDoor:(id)a3 didUpdateTargetDoorState:(int64_t)a4
{
  v6 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [DBSmartWidgetHomePrediction garageDoor:a4 didUpdateTargetDoorState:?];
  }

  [(DBSmartWidgetPrediction *)self predictionDidUpdate];
}

- (void)garageDoor:(id)a3 didUpdateObstructionDetected:(BOOL)a4
{
  v6 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(DBSmartWidgetHomePrediction *)self garageDoor:a4 didUpdateObstructionDetected:v6];
  }

  [(DBSmartWidgetPrediction *)self predictionDidUpdate];
}

void __49__DBSmartWidgetHomePrediction_primaryActionBlock__block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = NSStringFromDoorState(a2);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_4(&dword_248146000, v3, v4, "%{public}@ currentTargetDoorState=%{public}@", v5, v6, v7, v8, 2u);
}

- (void)serviceDidUpdate:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_248146000, a2, OS_LOG_TYPE_DEBUG, "%{public}@", &v2, 0xCu);
}

- (void)garageDoor:(uint64_t)a1 didUpdateDoorState:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v2 = NSStringFromDoorState(a2);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_4(&dword_248146000, v3, v4, "%{public}@ doorState=%{public}@", v5, v6, v7, v8, 2u);
}

- (void)garageDoor:(uint64_t)a1 didUpdateTargetDoorState:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v2 = NSStringFromDoorState(a2);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_4(&dword_248146000, v3, v4, "%{public}@ targetDoorState=%{public}@", v5, v6, v7, v8, 2u);
}

- (void)garageDoor:(os_log_t)log didUpdateObstructionDetected:.cold.1(uint64_t a1, char a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = @"YES";
  if ((a2 & 1) == 0)
  {
    v3 = @"NO";
  }

  v4 = 138543618;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&dword_248146000, log, OS_LOG_TYPE_DEBUG, "%{public}@ obstructionDetected=%@", &v4, 0x16u);
}

@end