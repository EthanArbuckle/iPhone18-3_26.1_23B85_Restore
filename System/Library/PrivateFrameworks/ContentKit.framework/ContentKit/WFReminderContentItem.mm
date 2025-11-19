@interface WFReminderContentItem
+ (BOOL)supportedTypeMustBeDeterminedByInstance:(id)a3;
+ (id)allLists;
+ (id)coercions;
+ (id)contactRepresentationWithContact:(id)a3;
+ (id)contentCategories;
+ (id)defaultList;
+ (id)itemWithReminder:(id)a3 fromReminderStore:(id)a4;
+ (id)localizedPluralTypeDescriptionWithContext:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)outputTypes;
+ (id)ownedTypes;
+ (id)propertyBuilders;
+ (id)stringConversionBehavior;
- (BOOL)canGenerateRepresentationForType:(id)a3;
- (BOOL)flagged;
- (BOOL)getListAltText:(id)a3;
- (BOOL)hasAlarms;
- (BOOL)hasSubtasks;
- (REMReminder)reminder;
- (id)URL;
- (id)changeTransaction;
- (id)defaultSourceForRepresentation:(id)a3;
- (id)generateFileRepresentationForType:(id)a3 options:(id)a4 error:(id *)a5;
- (id)imageAttachments;
- (id)parentReminder;
- (id)subtasks;
- (void)generateObjectRepresentations:(id)a3 options:(id)a4 forClass:(Class)a5;
@end

@implementation WFReminderContentItem

- (BOOL)getListAltText:(id)a3
{
  v4 = a3;
  v5 = [(WFReminderContentItem *)self reminder];
  v6 = [v5 dueDateComponents];

  if (v6)
  {
    v7 = [MEMORY[0x277CBEA80] currentCalendar];
    v8 = [v7 dateFromComponents:v6];

    v9 = objc_opt_new();
    [v9 setDateStyle:1];
    [v9 setTimeStyle:1];
    [v9 setDoesRelativeDateFormatting:1];
    if (v4)
    {
      v10 = [v9 stringFromDate:v8];
      v4[2](v4, v10);
    }
  }

  return v6 != 0;
}

- (id)defaultSourceForRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 wfType];
  v6 = [v5 conformsToClass:getREMReminderClass()];

  if (v6)
  {
    v7 = [v4 object];

    v8 = [v7 account];
    v9 = [(WFContentItem *)self cachingIdentifier];
    v10 = WFMakeContentAttributionSetForRemindersAccount(v8, v9);
  }

  else
  {
    v12.receiver = self;
    v12.super_class = WFReminderContentItem;
    v10 = [(WFContentItem *)&v12 defaultSourceForRepresentation:v4];
  }

  return v10;
}

- (BOOL)canGenerateRepresentationForType:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToClass:objc_opt_class()])
  {
    v5 = [(WFReminderContentItem *)self reminder];
    v6 = [v5 list];
    v7 = [v6 color];
    v8 = v7 != 0;

LABEL_13:
    goto LABEL_14;
  }

  if ([v4 isEqualToClass:objc_opt_class()])
  {
    v5 = [(WFReminderContentItem *)self reminder];
    v6 = [v5 startDateComponents];
    if (v6)
    {
      v8 = 1;
    }

    else
    {
      v10 = [(WFReminderContentItem *)self reminder];
      v11 = [v10 dueDateComponents];
      if (v11)
      {
        v8 = 1;
      }

      else
      {
        v12 = [(WFReminderContentItem *)self reminder];
        v13 = [v12 completionDate];
        v8 = v13 != 0;
      }
    }

    goto LABEL_13;
  }

  if ([v4 isEqualToClass:objc_opt_class()])
  {
    v9 = [(WFReminderContentItem *)self URL];
    v8 = v9 != 0;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = WFReminderContentItem;
    v8 = [(WFGenericFileContentItem *)&v15 canGenerateRepresentationForType:v4];
  }

LABEL_14:

  return v8;
}

- (void)generateObjectRepresentations:(id)a3 options:(id)a4 forClass:(Class)a5
{
  v41[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (objc_opt_class() == a5)
  {
    v9 = objc_opt_new();
    v10 = [(WFReminderContentItem *)self reminder];
    v11 = [v10 startDateComponents];

    if (v11)
    {
      v12 = [MEMORY[0x277CBEA80] currentCalendar];
      v13 = [(WFReminderContentItem *)self reminder];
      v14 = [v13 startDateComponents];
      v15 = [v12 dateFromComponents:v14];

      v16 = WFLocalizedString(@"Reminder Start Date");
      v17 = [WFObjectRepresentation object:v15 named:v16];
      [v9 addObject:v17];
    }

    v18 = [(WFReminderContentItem *)self reminder];
    v19 = [v18 dueDateComponents];

    if (v19)
    {
      v20 = [MEMORY[0x277CBEA80] currentCalendar];
      v21 = [(WFReminderContentItem *)self reminder];
      v22 = [v21 dueDateComponents];
      v23 = [v20 dateFromComponents:v22];

      v24 = WFLocalizedString(@"Reminder Due Date");
      v25 = [WFObjectRepresentation object:v23 named:v24];
      [v9 addObject:v25];
    }

    v26 = [(WFReminderContentItem *)self reminder];
    v27 = [v26 completionDate];

    if (v27)
    {
      v28 = [(WFReminderContentItem *)self reminder];
      v29 = [v28 completionDate];
      v30 = WFLocalizedString(@"Reminder Completion Date");
      v31 = [WFObjectRepresentation object:v29 named:v30];
      [v9 addObject:v31];
    }

    v7[2](v7, v9, 0);
    goto LABEL_18;
  }

  if (objc_opt_class() == a5)
  {
    v8 = [(WFReminderContentItem *)self URL];
    v32 = WFLocalizedStringWithKey(@"Show URL (Reminder Content Item)", @"Show URL");
    v33 = [WFObjectRepresentation object:v8 named:v32];
    v41[0] = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
    v7[2](v7, v34, 0);

    goto LABEL_13;
  }

  if (objc_opt_class() == a5)
  {
    v35 = [(WFReminderContentItem *)self reminder];
    v36 = [v35 list];
    v9 = [v36 color];

    if (v9)
    {
      v37 = [MEMORY[0x277D79E20] colorWithRemindersColor:v9];
      v38 = [WFObjectRepresentation object:v37];
      v40 = v38;
      v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
      v7[2](v7, v39, 0);
    }

    else
    {
      v37 = [objc_opt_class() badCoercionErrorForObjectClass:a5];
      (v7)[2](v7, 0, v37);
    }

LABEL_18:
    goto LABEL_19;
  }

  v8 = [objc_opt_class() badCoercionErrorForObjectClass:a5];
  (v7)[2](v7, 0, v8);
LABEL_13:

LABEL_19:
}

- (REMReminder)reminder
{
  REMReminderClass = getREMReminderClass();

  return [(WFContentItem *)self objectForClass:REMReminderClass];
}

- (id)generateFileRepresentationForType:(id)a3 options:(id)a4 error:(id *)a5
{
  v25[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([v7 conformsToString:@"com.apple.ical.ics"])
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v9 = getREMExportingClass_softClass;
    v24 = getREMExportingClass_softClass;
    if (!getREMExportingClass_softClass)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __getREMExportingClass_block_invoke;
      v20[3] = &unk_27834A178;
      v20[4] = &v21;
      __getREMExportingClass_block_invoke(v20);
      v9 = v22[3];
    }

    v10 = v9;
    _Block_object_dispose(&v21, 8);
    v11 = [(WFReminderContentItem *)self reminder];
    v25[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    v13 = [v9 exportICSCalendarFromReminders:v12];

    v14 = [v13 ICSStringWithOptions:0];
    v15 = [v14 dataUsingEncoding:4];

    v16 = [(WFContentItem *)self name];
    v17 = [WFFileRepresentation proposedFilenameForFile:v16 ofType:v7];

    v18 = [WFFileRepresentation fileWithData:v15 ofType:v7 proposedFilename:v17];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)imageAttachments
{
  v2 = [(WFReminderContentItem *)self reminder];
  v3 = [v2 attachmentContext];
  v4 = [v3 imageAttachments];
  v5 = [v4 if_map:&__block_literal_global_226];

  return v5;
}

id __41__WFReminderContentItem_imageAttachments__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 fileURL];
  v3 = [WFFileRepresentation fileWithURL:v2 options:13];

  return v3;
}

- (id)URL
{
  v2 = [(WFReminderContentItem *)self reminder];
  v3 = [v2 attachmentContext];
  v4 = [v3 urlAttachments];
  v5 = [v4 firstObject];
  v6 = [v5 url];

  return v6;
}

- (BOOL)flagged
{
  v2 = [(WFReminderContentItem *)self reminder];
  v3 = [v2 flaggedContext];
  v4 = [v3 flagged] > 0;

  return v4;
}

- (BOOL)hasAlarms
{
  v2 = [(WFReminderContentItem *)self reminder];
  v3 = [v2 alarms];
  v4 = [v3 count] != 0;

  return v4;
}

- (id)subtasks
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [(WFReminderContentItem *)self reminder];
  v3 = [v2 subtaskContext];
  v8 = 0;
  v4 = [v3 fetchRemindersWithError:&v8];
  v5 = v8;

  if (!v4)
  {
    v6 = getWFContentGraphLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "[WFReminderContentItem subtasks]";
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_21E1BD000, v6, OS_LOG_TYPE_ERROR, "%s Failed to fetch subtasks with error %@", buf, 0x16u);
    }
  }

  return v4;
}

- (BOOL)hasSubtasks
{
  v2 = [(WFReminderContentItem *)self subtasks];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)parentReminder
{
  v2 = [(WFReminderContentItem *)self reminder];
  v3 = [v2 parentReminder];

  return v3;
}

- (id)changeTransaction
{
  v2 = [[WFReminderContentItemChangeTransaction alloc] initWithContentItem:self];

  return v2;
}

+ (id)contactRepresentationWithContact:(id)a3
{
  v3 = a3;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 contact];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 phoneNumbers];
      v7 = [v6 if_map:&__block_literal_global_301];

      v8 = [v5 emailAddresses];
      v9 = [v8 if_map:&__block_literal_global_303];

      v16 = 0;
      v17 = &v16;
      v18 = 0x2050000000;
      v10 = getREMContactRepresentationClass_softClass;
      v19 = getREMContactRepresentationClass_softClass;
      if (!getREMContactRepresentationClass_softClass)
      {
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __getREMContactRepresentationClass_block_invoke;
        v15[3] = &unk_27834A178;
        v15[4] = &v16;
        __getREMContactRepresentationClass_block_invoke(v15);
        v10 = v17[3];
      }

      v11 = v10;
      _Block_object_dispose(&v16, 8);
      v12 = [[v10 alloc] initWithPhones:v7 emails:v9];
    }

    else
    {
      v12 = 0;
    }

    v13 = v3;
  }

  else
  {

    v13 = 0;
    v12 = 0;
  }

  return v12;
}

id __58__WFReminderContentItem_contactRepresentationWithContact___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = [v2 unformattedInternationalStringValue];

  return v3;
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Reminders", @"Reminders");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Reminder (singular)", @"Reminder");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)contentCategories
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"Location";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)outputTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [WFObjectType typeWithClass:objc_opt_class()];
  v5 = [WFObjectType typeWithClass:objc_opt_class()];
  v6 = [MEMORY[0x277D79F68] typeWithString:@"com.apple.ical.ics"];
  v7 = [v2 orderedSetWithObjects:{v3, v4, v5, v6, 0}];

  return v7;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClassName:@"REMReminder" frameworkName:@"ReminderKit" location:1];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

+ (BOOL)supportedTypeMustBeDeterminedByInstance:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v4, "isEqualToClass:", objc_opt_class()) & 1) != 0 || (objc_msgSend(v4, "isEqualToClass:", objc_opt_class()))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___WFReminderContentItem;
    v5 = objc_msgSendSuper2(&v7, sel_supportedTypeMustBeDeterminedByInstance_, v4);
  }

  return v5;
}

id __50__WFReminderContentItem_linkEntityCoercionHandler__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D23808];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 reminder];

  v6 = [v5 objectID];
  v7 = [v6 urlRepresentation];
  v8 = [v7 absoluteString];
  v9 = [v4 initWithTypeIdentifier:@"ReminderEntity" instanceIdentifier:v8];

  v10 = [objc_alloc(MEMORY[0x277D237F8]) initWithIdentifier:v9];

  return v10;
}

+ (id)coercions
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [WFObjectType typeWithClassName:@"LNEntity" frameworkName:@"LinkMetadata" location:1];
  v4 = [a1 linkEntityCoercionHandler];
  v5 = [WFCoercion coercionToType:v3 handler:v4];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
}

+ (id)defaultList
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = WFGetWorkflowReminderStore();
  v8 = 0;
  v3 = [v2 fetchDefaultListWithError:&v8];
  v4 = v8;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = getWFContentGraphLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "+[WFReminderContentItem defaultList]";
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_21E1BD000, v6, OS_LOG_TYPE_ERROR, "%s Failed to fetch default list with error %@", buf, 0x16u);
    }
  }

  return v3;
}

+ (id)allLists
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = WFGetWorkflowReminderStore();
  v3 = objc_opt_new();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __33__WFReminderContentItem_allLists__block_invoke;
  v8[3] = &unk_278348938;
  v4 = v3;
  v9 = v4;
  [v2 enumerateAllListsWithBlock:v8];
  v5 = getWFContentGraphLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 count];
    *buf = 136315394;
    v11 = "+[WFReminderContentItem allLists]";
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&dword_21E1BD000, v5, OS_LOG_TYPE_INFO, "%s Fetched %ld Reminders lists", buf, 0x16u);
  }

  return v4;
}

+ (id)stringConversionBehavior
{
  v2 = [a1 propertyForName:@"Title"];
  v3 = [WFContentItemStringConversionBehavior accessingProperty:v2];

  return v3;
}

+ (id)propertyBuilders
{
  v136[4] = *MEMORY[0x277D85DE8];
  v2 = WFLocalizedString(@"None");
  v136[0] = v2;
  v3 = WFLocalizedString(@"Low");
  v136[1] = v3;
  v4 = WFLocalizedString(@"Medium");
  v136[2] = v4;
  v5 = WFLocalizedString(@"High");
  v136[3] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v136 count:4];

  v7 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
  v134[0] = v7;
  v8 = [v6 objectAtIndex:0];
  v135[0] = v8;
  v9 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{1, 4}];
  v134[1] = v9;
  v10 = [v6 objectAtIndex:3];
  v135[1] = v10;
  v11 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{5, 1}];
  v134[2] = v11;
  v12 = [v6 objectAtIndex:2];
  v135[2] = v12;
  v13 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{6, 4}];
  v134[3] = v13;
  v103 = v6;
  v14 = [v6 objectAtIndex:1];
  v135[3] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v135 forKeys:v134 count:4];

  v126 = WFLocalizedContentPropertyNameMarker(@"Title");
  v125 = [WFContentPropertyBuilder keyPath:@"reminder.title.string" name:v126 class:objc_opt_class()];
  v124 = [v125 setterBlock:&__block_literal_global_20497];
  v133[0] = v124;
  v123 = WFLocalizedContentPropertyNameMarker(@"Notes");
  v122 = [WFContentPropertyBuilder keyPath:@"reminder.notes.string" name:v123 class:objc_opt_class()];
  v121 = [v122 sortable:0];
  v120 = [v121 appendable:1];
  v119 = [v120 setterBlock:&__block_literal_global_63_20500];
  v133[1] = v119;
  v118 = WFLocalizedContentPropertyNameMarker(@"Last Modified Date");
  v117 = [WFContentPropertyBuilder keyPath:@"reminder.lastModifiedDate" name:v118 class:objc_opt_class()];
  v116 = [v117 tense:1];
  v115 = [v116 timeUnits:8444];
  v114 = [v115 userInfo:@"WFFileModificationDate"];
  v133[2] = v114;
  v113 = [WFContentPropertyBuilder keyPath:@"reminder.creationDate" name:@"Creation Date" class:objc_opt_class()];
  v112 = WFLocalizedContentPropertyNameMarker(@"Date Created");
  v111 = [v113 displayName:v112];
  v110 = [v111 tense:1];
  v109 = [v110 timeUnits:8444];
  v108 = [v109 userInfo:@"WFFileCreationDate"];
  v133[3] = v108;
  v107 = WFLocalizedContentPropertyNameMarker(@"File Size");
  v106 = [WFContentPropertyBuilder block:&__block_literal_global_79_20508 name:v107 class:objc_opt_class()];
  v105 = [v106 userInfo:@"WFFileSizeProperty"];
  v104 = [v105 filterable:0];
  v102 = [v104 sortable:0];
  v133[4] = v102;
  v101 = WFLocalizedContentPropertyNameMarker(@"Due Date");
  v100 = [WFContentPropertyBuilder block:&__block_literal_global_86 name:v101 class:objc_opt_class()];
  v99 = [v100 timeUnits:8444];
  v98 = [v99 setterBlock:&__block_literal_global_90_20510];
  v97 = [v98 timeUnits:8316];
  v133[5] = v97;
  v131[0] = MEMORY[0x277D85DD0];
  v131[1] = 3221225472;
  v131[2] = __41__WFReminderContentItem_propertyBuilders__block_invoke_7;
  v131[3] = &unk_2783487A8;
  v16 = v15;
  v132 = v16;
  v96 = WFLocalizedContentPropertyNameMarker(@"Priority");
  v95 = [WFContentPropertyBuilder block:v131 name:v96 class:objc_opt_class()];
  v93 = [v95 possibleValues:v6];
  v129[0] = MEMORY[0x277D85DD0];
  v129[1] = 3221225472;
  v129[2] = __41__WFReminderContentItem_propertyBuilders__block_invoke_8;
  v129[3] = &unk_2783487D0;
  v130 = v16;
  v94 = v16;
  v92 = [v93 setterBlock:v129];
  v133[6] = v92;
  v90 = WFLocalizedContentPropertyNameMarker(@"Is Completed");
  v91 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v89 = [WFContentPropertyBuilder keyPath:@"reminder.completed" name:v90 class:objc_opt_class()];
  v88 = WFLocalizedContentPropertyNameMarker(@"Is Not Completed");
  v87 = [v89 negativeName:v88];
  v86 = WFLocalizedString(@"Reminder");
  v85 = [v87 singularItemName:v86];
  v84 = [v85 setterBlock:&__block_literal_global_106];
  v133[7] = v84;
  v82 = WFLocalizedContentPropertyNameMarker(@"Is Flagged");
  v83 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v81 = [WFContentPropertyBuilder keyPath:@"flagged" name:v82 class:objc_opt_class()];
  v80 = WFLocalizedContentPropertyNameMarker(@"Is Not Flagged");
  v79 = [v81 negativeName:v80];
  v78 = WFLocalizedString(@"Reminder");
  v77 = [v79 singularItemName:v78];
  v76 = [v77 setterBlock:&__block_literal_global_117];
  v133[8] = v76;
  v75 = WFLocalizedContentPropertyNameMarker(@"Completion Date");
  v74 = [WFContentPropertyBuilder keyPath:@"reminder.completionDate" name:v75 class:objc_opt_class()];
  v133[9] = v74;
  v71 = WFLocalizedContentPropertyNameMarker(@"List");
  v70 = [WFContentPropertyBuilder keyPath:@"reminder.list.name" name:v71 class:objc_opt_class()];
  v128[0] = MEMORY[0x277D85DD0];
  v128[1] = 3221225472;
  v128[2] = __41__WFReminderContentItem_propertyBuilders__block_invoke_11;
  v128[3] = &__block_descriptor_40_e14___NSArray_8__0l;
  v128[4] = a1;
  v69 = [v70 possibleValuesGetter:v128];
  v127[0] = MEMORY[0x277D85DD0];
  v127[1] = 3221225472;
  v127[2] = __41__WFReminderContentItem_propertyBuilders__block_invoke_12;
  v127[3] = &__block_descriptor_40_e61_v24__0__WFReminderContentItemChangeTransaction_8__NSString_16l;
  v127[4] = a1;
  v73 = [v69 setterBlock:v127];
  v133[10] = v73;
  v68 = WFLocalizedContentPropertyNameMarker(@"Tags");
  v67 = [WFContentPropertyBuilder block:&__block_literal_global_134_20525 name:v68 class:objc_opt_class()];
  v66 = [v67 multipleValues:1];
  v65 = [v66 allowedOperators:&unk_282F7BE60];
  v64 = [v65 setterBlock:&__block_literal_global_141];
  v133[11] = v64;
  v63 = WFLocalizedContentPropertyNameMarker(@"URL");
  v62 = [WFContentPropertyBuilder keyPath:@"URL" name:v63 class:objc_opt_class()];
  v61 = [v62 sortable:0];
  v60 = [v61 setterBlock:&__block_literal_global_149_20528];
  v59 = [v60 canLowercaseName:0];
  v133[12] = v59;
  v58 = WFLocalizedContentPropertyNameMarker(@"Images");
  v57 = [WFContentPropertyBuilder keyPath:@"imageAttachments" name:v58 class:objc_opt_class()];
  v56 = [v57 sortable:0];
  v55 = [v56 removable:0];
  v54 = [v55 multipleValues:1];
  v53 = [v54 setterBlock:&__block_literal_global_159];
  v52 = WFLocalizedContentPropertyNameMarker(@"Image");
  v51 = [v53 singularItemName:v52];
  v133[13] = v51;
  v49 = WFLocalizedContentPropertyNameMarker(@"Has Subtasks");
  v50 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v48 = [WFContentPropertyBuilder keyPath:@"hasSubtasks" name:v49 class:objc_opt_class()];
  v47 = WFLocalizedContentPropertyNameMarker(@"Has No Subtasks");
  v46 = [v48 negativeName:v47];
  v45 = WFLocalizedString(@"Reminder");
  v44 = [v46 singularItemName:v45];
  v133[14] = v44;
  v43 = WFLocalizedContentPropertyNameMarker(@"Subtasks");
  getREMReminderClass();
  v42 = [WFContentPropertyBuilder keyPath:@"subtasks" name:v43 class:objc_opt_class()];
  v41 = [v42 multipleValues:1];
  v40 = [v41 sortable:0];
  v39 = [v40 filterable:0];
  v38 = [v39 setterBlock:&__block_literal_global_180_20537];
  v133[15] = v38;
  v37 = WFLocalizedContentPropertyNameMarker(@"Parent Reminder");
  getREMReminderClass();
  v36 = [WFContentPropertyBuilder keyPath:@"parentReminder" name:v37 class:objc_opt_class()];
  v35 = [v36 sortable:0];
  v34 = [v35 filterable:0];
  v33 = [v34 setterBlock:&__block_literal_global_190_20540];
  v133[16] = v33;
  v31 = WFLocalizedContentPropertyNameMarker(@"Has Alarms");
  v32 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v30 = [WFContentPropertyBuilder keyPath:@"hasAlarms" name:v31 class:objc_opt_class()];
  v29 = WFLocalizedContentPropertyNameMarker(@"Has No Alarms");
  v17 = [v30 negativeName:v29];
  v18 = WFLocalizedString(@"Reminder");
  v19 = [v17 singularItemName:v18];
  v133[17] = v19;
  v20 = WFLocalizedContentPropertyNameMarker(@"Reminder Location");
  v21 = [WFContentPropertyBuilder block:&__block_literal_global_203_20546 name:v20 class:getCLLocationClass_20545()];
  v133[18] = v21;
  v22 = WFLocalizedContentPropertyNameMarker(@"When Messaging Person");
  v23 = [WFContentPropertyBuilder block:&__block_literal_global_210_20549 name:v22 class:objc_opt_class()];
  v24 = [v23 gettable:0];
  v25 = [v24 filterable:0];
  v26 = [v25 setterBlock:&__block_literal_global_221];
  v133[19] = v26;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v133 count:20];

  return v28;
}

void __41__WFReminderContentItem_propertyBuilders__block_invoke_7(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [*(a1 + 32) allKeys];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        v14 = [v6 reminder];
        v15 = [v13 containsIndex:{objc_msgSend(v14, "priority")}];

        if (v15)
        {
          v16 = [*(a1 + 32) objectForKey:v13];
          v7[2](v7, v16);

          goto LABEL_11;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v7[2](v7, 0);
LABEL_11:
}

void __41__WFReminderContentItem_propertyBuilders__block_invoke_8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v11 = v5;
  if (a3)
  {
    v6 = [*(a1 + 32) allKeysForObject:a3];
    v7 = [v6 firstObject];

    if (v7)
    {
      v8 = [v6 firstObject];
      v9 = [v8 firstIndex];
      v10 = [v11 mutableReminder];
      [v10 setPriority:v9];
    }
  }

  else
  {
    v6 = [v5 mutableReminder];
    [v6 setPriority:0];
  }
}

id __41__WFReminderContentItem_propertyBuilders__block_invoke_11(uint64_t a1)
{
  v1 = [*(a1 + 32) allLists];
  v2 = [v1 valueForKey:@"name"];

  return v2;
}

void __41__WFReminderContentItem_propertyBuilders__block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 allLists];
  v8 = [v7 objectMatchingKey:@"name" value:v6];

  if (v8)
  {
    [v9 updateList:v8];
  }
}

void __41__WFReminderContentItem_propertyBuilders__block_invoke_218(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v6 = [a2 mutableReminder];
  v5 = [WFReminderContentItem contactRepresentationWithContact:v4];

  [v6 setContactHandles:v5];
}

void __41__WFReminderContentItem_propertyBuilders__block_invoke_7_207(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v10 = a4;
  v5 = [a2 reminder];
  v6 = [v5 contactHandles];

  v7 = [v6 phones];
  if ([v7 count])
  {
    v10[2](v10, &unk_282F7A330);
  }

  else
  {
    v8 = [v6 emails];
    if ([v8 count])
    {
      v9 = &unk_282F7A330;
    }

    else
    {
      v9 = 0;
    }

    v10[2](v10, v9);
  }
}

void __41__WFReminderContentItem_propertyBuilders__block_invoke_6_200(uint64_t a1, void *a2, void *a3, void *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v24 = a3;
  v25 = a4;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [v6 reminder];
  v8 = [v7 alarms];

  v9 = [v8 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v9)
  {
    v10 = *v27;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v13 = [v12 trigger];
        v31 = 0;
        v32 = &v31;
        v33 = 0x2050000000;
        v14 = getREMAlarmLocationTriggerClass_softClass;
        v34 = getREMAlarmLocationTriggerClass_softClass;
        if (!getREMAlarmLocationTriggerClass_softClass)
        {
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __getREMAlarmLocationTriggerClass_block_invoke;
          v30[3] = &unk_27834A178;
          v30[4] = &v31;
          __getREMAlarmLocationTriggerClass_block_invoke(v30);
          v14 = v32[3];
        }

        v15 = v14;
        _Block_object_dispose(&v31, 8);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v17 = [v12 trigger];
          v18 = [v17 structuredLocation];

          v19 = objc_alloc(getCLLocationClass_20545());
          [v18 latitude];
          v21 = v20;
          [v18 longitude];
          v23 = [v19 initWithLatitude:v21 longitude:v22];
          v25[2](v25, v23);

          goto LABEL_13;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v26 objects:v35 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v25[2](v25, 0);
LABEL_13:
}

void __41__WFReminderContentItem_propertyBuilders__block_invoke_5_187(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 remObjectID];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v8 mutableReminder];
  [v7 setParentReminderID:v6];

  if (v5)
  {
  }
}

void __41__WFReminderContentItem_propertyBuilders__block_invoke_2_146(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v4 = a3;
  v5 = [v10 mutableReminder];
  v6 = [v5 attachmentContext];
  [v6 removeURLAttachments];

  if (v4)
  {
    v7 = [v10 mutableReminder];
    v8 = [v7 attachmentContext];
    v9 = [v8 addURLAttachmentWithURL:v4];
  }
}

void __41__WFReminderContentItem_propertyBuilders__block_invoke_13(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void))
{
  v6 = a4;
  v10 = [a2 reminder];
  v7 = [v10 hashtags];
  v8 = [v7 allObjects];
  v9 = [v8 valueForKey:@"name"];
  (a4)[2](v6, v9);
}

void __41__WFReminderContentItem_propertyBuilders__block_invoke_10(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    a3 = [a3 BOOLValue];
  }

  v4 = [v5 mutableReminder];
  [v4 setFlagged:a3];
}

void __41__WFReminderContentItem_propertyBuilders__block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (a3)
  {
    a3 = [a3 BOOLValue];
  }

  v4 = [v5 mutableReminder];
  [v4 setCompleted:a3];
}

void __41__WFReminderContentItem_propertyBuilders__block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 mutableReminder];
  [v5 setDueDateComponentsWithAlarmsIfNeeded:v4];
}

void __41__WFReminderContentItem_propertyBuilders__block_invoke_5(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v12 = a2;
  v5 = a4;
  v6 = [v12 reminder];
  v7 = [v6 dueDateComponents];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEA80] currentCalendar];
    v9 = [v12 reminder];
    v10 = [v9 dueDateComponents];
    v11 = [v8 dateFromComponents:v10];
    v5[2](v5, v11);
  }

  else
  {
    v5[2](v5, 0);
  }
}

void __41__WFReminderContentItem_propertyBuilders__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__WFReminderContentItem_propertyBuilders__block_invoke_4;
  v7[3] = &unk_278349780;
  v8 = v5;
  v6 = v5;
  [a2 getPreferredFileSize:v7];
}

void __41__WFReminderContentItem_propertyBuilders__block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [[WFFileSize alloc] initWithByteCount:a2];
  (*(v2 + 16))(v2, v3);
}

void __41__WFReminderContentItem_propertyBuilders__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 mode];
  v7 = [v6 isEqual:@"Append"];

  v8 = objc_alloc(MEMORY[0x277CCA898]);
  v9 = v8;
  if (v7)
  {
    v16 = [v5 mutableReminder];
    v10 = [v16 notes];
    v11 = [v10 string];
    v12 = [v11 stringByAppendingAsNewLine:v4];

    v13 = [v9 initWithString:v12];
    v14 = [v5 mutableReminder];

    [v14 setNotes:v13];
  }

  else
  {
    if (v4)
    {
      v15 = v4;
    }

    else
    {
      v15 = &stru_282F53518;
    }

    v16 = [v8 initWithString:v15];

    v10 = [v5 mutableReminder];

    [v10 setNotes:v16];
  }
}

void __41__WFReminderContentItem_propertyBuilders__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCA898];
  v5 = a3;
  v6 = a2;
  v7 = [v4 alloc];
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = &stru_282F53518;
  }

  v10 = [v7 initWithString:v8];

  v9 = [v6 mutableReminder];

  [v9 setTitle:v10];
}

+ (id)itemWithReminder:(id)a3 fromReminderStore:(id)a4
{
  v6 = a4;
  v7 = [a1 itemWithObject:a3 named:0];
  [v7 setReminderStore:v6];

  return v7;
}

@end