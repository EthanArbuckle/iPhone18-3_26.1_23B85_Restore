@interface CalUMCalendarDataContainerInfo
+ (id)_calendarGroupContainer;
- (CalUMCalendarDataContainerInfo)initWithAccount:(id)a3;
- (CalUMCalendarDataContainerInfo)initWithPersonaID:(id)a3;
@end

@implementation CalUMCalendarDataContainerInfo

- (CalUMCalendarDataContainerInfo)initWithAccount:(id)a3
{
  v4 = a3;
  v5 = [v4 cal_personaIdentifier];
  v6 = [(CalUMCalendarDataContainerInfo *)self initWithPersonaID:v5];
  if (v6)
  {
    v7 = [v4 identifier];
    accountID = v6->_accountID;
    v6->_accountID = v7;
  }

  return v6;
}

- (CalUMCalendarDataContainerInfo)initWithPersonaID:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CalUMCalendarDataContainerInfo;
  v5 = [(CalUMCalendarDataContainerInfo *)&v17 init];
  if (!v5)
  {
LABEL_15:
    v10 = v5;
    goto LABEL_16;
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = +[CalPersonaUtils personalPersonaIdentifier];
  }

  v7 = *(v5 + 3);
  *(v5 + 3) = v6;

  v8 = *(v5 + 3);
  if (!v8 || (v15[0] = MEMORY[0x1E69E9820], v15[1] = 3221225472, v15[2] = __52__CalUMCalendarDataContainerInfo_initWithPersonaID___block_invoke, v15[3] = &unk_1E7EC7308, v16 = v5, v9 = [CalPersonaUtils performBlockAsPersonaWithIdentifier:v8 block:v15], v16, !v4) || v9)
  {
    if (!*(v5 + 4))
    {
      if (*(v5 + 3))
      {
        v11 = +[CalFoundationLogSubsystem defaultCategory];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [(CalUMCalendarDataContainerInfo *)v5 + 3 initWithPersonaID:v11];
        }
      }

      *(v5 + 8) = 0;
      v12 = +[CalUMCalendarDataContainerInfo _calendarGroupContainer];
      v13 = *(v5 + 4);
      *(v5 + 4) = v12;
    }

    goto LABEL_15;
  }

  v10 = 0;
LABEL_16:

  return v10;
}

uint64_t __52__CalUMCalendarDataContainerInfo_initWithPersonaID___block_invoke(uint64_t a1, void *a2)
{
  *(*(a1 + 32) + 8) = [a2 isDataSeparatedPersona];
  v3 = +[CalUMCalendarDataContainerInfo _calendarGroupContainer];
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = v3;

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_calendarGroupContainer
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.calendar"];

  return v3;
}

- (void)initWithPersonaID:(uint64_t *)a1 .cold.1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1B990D000, a2, OS_LOG_TYPE_ERROR, "Couldn't restore personal persona %@. Assuming we're already running in that persona and hoping for the best.", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end