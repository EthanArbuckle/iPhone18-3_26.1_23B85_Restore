@interface MFMessageCriterionConverter
+ (OS_os_log)log;
- (MFMessageCriterionConverterDelegate)delegate;
- (id)_defaultKeysForCriterionType:(int64_t)type;
- (id)_messageCriterionForComparisonPredicate:(id)predicate;
- (id)_messageCriterionForCompoundPredicate:(id)predicate;
- (id)_orPredicateForAttributes:(id)attributes matchingValue:(id)value qualifier:(int64_t)qualifier;
- (id)_predicateForKey:(id)key value:(id)value qualifier:(int64_t)qualifier;
- (id)_predicateKeysForCriterion:(int64_t)criterion;
- (id)_searchPredicateForCriterion:(id)criterion;
- (id)_simplifiedCompoundPredicateOfType:(unint64_t)type forSubqueries:(id)subqueries;
- (id)messageCriterionFromPredicate:(id)predicate;
- (id)messageCriterionFromPredicateFormatString:(id)string;
- (id)predicateFromMessageCriterion:(id)criterion;
- (int64_t)_criterionTypeForKey:(id)key;
- (int64_t)_criterionTypeFromExpression:(id)expression;
- (int64_t)_defaultCriterionTypeForKey:(id)key;
- (unint64_t)_proposedPredicateOperatorType:(unint64_t)type forKey:(id)key;
@end

@implementation MFMessageCriterionConverter

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__MFMessageCriterionConverter_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_21 != -1)
  {
    dispatch_once(&log_onceToken_21, block);
  }

  v2 = log_log_21;

  return v2;
}

void __34__MFMessageCriterionConverter_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_21;
  log_log_21 = v1;
}

- (id)_simplifiedCompoundPredicateOfType:(unint64_t)type forSubqueries:(id)subqueries
{
  v23 = *MEMORY[0x1E69E9840];
  subqueriesCopy = subqueries;
  array = [MEMORY[0x1E695DEC8] array];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = subqueriesCopy;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = *v19;
  while (2)
  {
    v9 = 0;
    v10 = array;
    do
    {
      if (*v19 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v18 + 1) + 8 * v9);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v12 = v10;
LABEL_14:

        goto LABEL_15;
      }

      v12 = v11;
      if ([v12 compoundPredicateType] != type)
      {

        goto LABEL_14;
      }

      subpredicates = [v12 subpredicates];
      array = [v10 arrayByAddingObjectsFromArray:subpredicates];

      ++v9;
      v10 = array;
    }

    while (v7 != v9);
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_10:

  if (!array)
  {
LABEL_15:
    array = v6;
  }

  if ([array count])
  {
    v14 = [objc_alloc(MEMORY[0x1E696AB28]) initWithType:type subpredicates:array];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (unint64_t)_proposedPredicateOperatorType:(unint64_t)type forKey:(id)key
{
  keyCopy = key;
  delegate = [(MFMessageCriterionConverter *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(MFMessageCriterionConverter *)self delegate];
    type = [delegate2 messageCriterionConverter:self willUsePredicateOperatorType:type forKey:keyCopy];
  }

  return type;
}

- (id)_predicateForKey:(id)key value:(id)value qualifier:(int64_t)qualifier
{
  keyCopy = key;
  valueCopy = value;
  v10 = [MEMORY[0x1E696ABC8] expressionForConstantValue:keyCopy];
  v11 = [MEMORY[0x1E696ABC8] expressionForConstantValue:valueCopy];
  if (qualifier >= 9)
  {
    v13 = +[MFMessageCriterionConverter log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [MFMessageCriterionConverter _predicateForKey:value:qualifier:];
    }

    v12 = 99;
  }

  else
  {
    v12 = qword_1B0E97760[qualifier];
  }

  v14 = [(MFMessageCriterionConverter *)self _proposedPredicateOperatorType:v12 forKey:keyCopy];
  v15 = [MEMORY[0x1E696AB18] predicateWithLeftExpression:v10 rightExpression:v11 modifier:0 type:v14 options:0];

  return v15;
}

- (id)_orPredicateForAttributes:(id)attributes matchingValue:(id)value qualifier:(int64_t)qualifier
{
  valueCopy = value;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __81__MFMessageCriterionConverter__orPredicateForAttributes_matchingValue_qualifier___block_invoke;
  v14[3] = &unk_1E7AA6F58;
  v14[4] = self;
  v9 = valueCopy;
  v15 = v9;
  qualifierCopy = qualifier;
  v10 = [attributes ef_map:v14];
  if ([v10 count] == 1)
  {
    v11 = [v10 objectAtIndexedSubscript:0];
LABEL_5:
    v12 = v11;
    goto LABEL_7;
  }

  if ([v10 count] >= 2)
  {
    v11 = [(MFMessageCriterionConverter *)self _simplifiedCompoundPredicateOfType:2 forSubqueries:v10];
    goto LABEL_5;
  }

  v12 = 0;
LABEL_7:

  return v12;
}

id __81__MFMessageCriterionConverter__orPredicateForAttributes_matchingValue_qualifier___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _predicateForKey:a2 value:*(a1 + 40) qualifier:*(a1 + 48)];

  return v2;
}

- (id)_defaultKeysForCriterionType:(int64_t)type
{
  if (_defaultKeysForCriterionType__onceToken != -1)
  {
    [MFMessageCriterionConverter _defaultKeysForCriterionType:];
  }

  v4 = _defaultKeysForCriterionType__converterKeyDictionary;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

void __60__MFMessageCriterionConverter__defaultKeysForCriterionType___block_invoke()
{
  v56[26] = *MEMORY[0x1E69E9840];
  v54 = @"Compound";
  v55[0] = &unk_1F2775E68;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
  v56[0] = v28;
  v55[1] = &unk_1F2775E80;
  v53 = @"AnyRecipient";
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
  v56[1] = v27;
  v55[2] = &unk_1F2775E98;
  v52 = *MEMORY[0x1E699A9B0];
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
  v56[2] = v26;
  v55[3] = &unk_1F2775EB0;
  v51 = *MEMORY[0x1E699A858];
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
  v56[3] = v25;
  v55[4] = &unk_1F2775EC8;
  v50 = @"BccRecipient";
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
  v56[4] = v24;
  v55[5] = &unk_1F2775EE0;
  v49 = @"senderAddress.emailAddressValue.simpleAddress";
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
  v56[5] = v23;
  v55[6] = &unk_1F2775EF8;
  v48 = @"Spotlight";
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
  v56[6] = v22;
  v55[7] = &unk_1F2775F10;
  v47 = @"body";
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
  v56[7] = v21;
  v55[8] = &unk_1F2775F28;
  v46 = @"Mailbox";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
  v56[8] = v20;
  v55[9] = &unk_1F2775F40;
  v45 = @"DateReceived";
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
  v56[9] = v19;
  v55[10] = &unk_1F2775F58;
  v44 = @"DateSent";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
  v56[10] = v18;
  v55[11] = &unk_1F2775F70;
  v43 = @"DisplayDate";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
  v56[11] = v17;
  v55[12] = &unk_1F2775F88;
  v42 = @"subject.subjectWithoutPrefix";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
  v56[12] = v16;
  v55[13] = &unk_1F2775FA0;
  v41 = @"VIP";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
  v56[13] = v15;
  v55[14] = &unk_1F2775FB8;
  v40 = @"IsRead";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
  v56[14] = v14;
  v55[15] = &unk_1F2775FD0;
  v39 = @"HasAttachments";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
  v56[15] = v13;
  v55[16] = &unk_1F2775FE8;
  v38 = @"Flagged";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
  v56[16] = v0;
  v55[17] = &unk_1F2776000;
  v37 = @"FlagColor";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
  v56[17] = v1;
  v55[18] = &unk_1F2776018;
  v36 = @"readLaterDate";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  v56[18] = v2;
  v55[19] = &unk_1F2776030;
  v35 = *MEMORY[0x1E699A960];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  v56[19] = v3;
  v55[20] = &unk_1F2776048;
  v34 = @"sendLaterDate";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v56[20] = v4;
  v55[21] = &unk_1F2776060;
  v33 = @"followUpStartDate";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
  v56[21] = v5;
  v55[22] = &unk_1F2776078;
  v32 = *MEMORY[0x1E699A8B0];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  v56[22] = v6;
  v55[23] = &unk_1F2776090;
  v31 = @"followUpEndDate";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  v56[23] = v7;
  v55[24] = &unk_1F27760A8;
  v30 = @"senderBucket";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  v56[24] = v8;
  v55[25] = &unk_1F27760C0;
  v29 = @"category";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
  v56[25] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:26];
  v11 = _defaultKeysForCriterionType__converterKeyDictionary;
  _defaultKeysForCriterionType__converterKeyDictionary = v10;

  v12 = *MEMORY[0x1E69E9840];
}

- (id)_predicateKeysForCriterion:(int64_t)criterion
{
  delegate = [(MFMessageCriterionConverter *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate messageCriterionConverter:self predicateKeysForCriterionType:criterion];
  }

  else
  {
    [(MFMessageCriterionConverter *)self _defaultKeysForCriterionType:criterion];
  }
  v6 = ;

  return v6;
}

- (id)_searchPredicateForCriterion:(id)criterion
{
  criterionCopy = criterion;
  qualifier = [criterionCopy qualifier];
  expression = [criterionCopy expression];
  v8 = criterionCopy;
  criterionType = [v8 criterionType];
  if (criterionType > 10)
  {
    v10 = 0;
    switch(criterionType)
    {
      case 23:
        v10 = 11;
        goto LABEL_48;
      case 24:
      case 26:
      case 29:
      case 30:
      case 31:
      case 32:
      case 34:
      case 36:
      case 37:
      case 38:
      case 39:
      case 42:
      case 43:
      case 45:
      case 50:
        goto LABEL_48;
      case 25:
        v10 = 1;
        goto LABEL_48;
      case 27:
        expression2 = [v8 expression];
        if ([expression2 isEqualToString:@"MessageSenderIsVIP"])
        {
          v10 = 16;
          goto LABEL_47;
        }

        if ([expression2 isEqualToString:@"MessageIsRead"])
        {
          v10 = 17;
          goto LABEL_47;
        }

        if ([expression2 isEqualToString:@"MFMessageHasAttachments"])
        {
          v10 = 18;
          goto LABEL_47;
        }

        v15 = [expression2 isEqualToString:@"MessageIsFlagged"] == 0;
        v16 = 19;
        break;
      case 28:
        v10 = 20;
        goto LABEL_48;
      case 33:
        v10 = 9;
        goto LABEL_48;
      case 35:
        v10 = 8;
        goto LABEL_48;
      case 40:
        v10 = 3;
        goto LABEL_48;
      case 41:
        v10 = 4;
        goto LABEL_48;
      case 44:
        v10 = 36;
        goto LABEL_48;
      case 46:
        v10 = 29;
        goto LABEL_48;
      case 47:
        v10 = 32;
        goto LABEL_48;
      case 48:
        v10 = 33;
        goto LABEL_48;
      case 49:
        v10 = 31;
        goto LABEL_48;
      case 51:
        v10 = 25;
        goto LABEL_48;
      default:
        v11 = 12;
        v12 = 14;
        if (criterionType != 12)
        {
          v12 = 0;
        }

        v13 = criterionType == 11;
        goto LABEL_15;
    }

    goto LABEL_44;
  }

  if (criterionType <= 8)
  {
    if (criterionType != 1)
    {
      if (criterionType == 2)
      {
        v10 = 10;
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_48;
    }

    expression2 = [v8 criterionIdentifier];
    if ([*MEMORY[0x1E699B178] isEqual:expression2])
    {
      v10 = 15;
    }

    else if ([*MEMORY[0x1E699B180] isEqual:expression2])
    {
      v10 = 3;
    }

    else
    {
      if (([*MEMORY[0x1E699B098] isEqual:expression2] & 1) == 0)
      {
        v15 = [*MEMORY[0x1E699B088] isEqual:expression2] == 0;
        v16 = 5;
LABEL_44:
        if (v15)
        {
          v10 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v16;
        }

        goto LABEL_47;
      }

      v10 = 4;
    }

LABEL_47:

    goto LABEL_48;
  }

  v11 = 2;
  v12 = 13;
  if (criterionType != 10)
  {
    v12 = 0;
  }

  v13 = criterionType == 9;
LABEL_15:
  if (v13)
  {
    v10 = v11;
  }

  else
  {
    v10 = v12;
  }

LABEL_48:

  v17 = [(MFMessageCriterionConverter *)self _predicateKeysForCriterion:v10];
  v18 = 3;
  switch(v10)
  {
    case 0:
      v24 = +[MFMessageCriterionConverter log];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [MFMessageCriterionConverter _searchPredicateForCriterion:];
      }

      goto LABEL_64;
    case 1:
      criteria = [v8 criteria];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __60__MFMessageCriterionConverter__searchPredicateForCriterion___block_invoke;
      v34[3] = &unk_1E7AA6F80;
      v34[4] = self;
      v30 = [criteria ef_compactMap:v34];

      if ([v8 allCriteriaMustBeSatisfied])
      {
        v31 = 1;
      }

      else
      {
        v31 = 2;
      }

      v20 = [(MFMessageCriterionConverter *)self _simplifiedCompoundPredicateOfType:v31 forSubqueries:v30];

      goto LABEL_53;
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 15:
    case 29:
    case 30:
    case 32:
    case 33:
    case 34:
    case 35:
      v19 = [(MFMessageCriterionConverter *)self _orPredicateForAttributes:v17 matchingValue:expression qualifier:qualifier];
      goto LABEL_52;
    case 12:
    case 13:
    case 14:
    case 31:
      dateFromExpression = [v8 dateFromExpression];
      v20 = [(MFMessageCriterionConverter *)self _orPredicateForAttributes:v17 matchingValue:dateFromExpression qualifier:qualifier];

      goto LABEL_53;
    case 16:
      goto LABEL_51;
    case 17:
      if (qualifier == 3)
      {
        v32 = MEMORY[0x1E695E118];
      }

      else
      {
        if (qualifier != 7)
        {
          v33 = +[MFMessageCriterionConverter log];
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            [MFMessageCriterionConverter _searchPredicateForCriterion:];
          }

          v20 = 0;
          goto LABEL_53;
        }

        v32 = MEMORY[0x1E695E110];
      }

      qualifier = 3;
      v19 = [(MFMessageCriterionConverter *)self _orPredicateForAttributes:v17 matchingValue:v32 qualifier:3];
LABEL_52:
      v20 = v19;
LABEL_53:
      if (v20 && qualifier == 4)
      {
        v21 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:v20];

        v20 = v21;
      }

      if (v20)
      {
        v22 = +[MFMessageCriterionConverter log];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [MFMessageCriterionConverter _searchPredicateForCriterion:];
        }
      }

LABEL_66:

      return v20;
    case 18:
    case 19:
    case 20:
    case 22:
      v18 = qualifier;
LABEL_51:
      v19 = [(MFMessageCriterionConverter *)self _orPredicateForAttributes:v17 matchingValue:MEMORY[0x1E695E118] qualifier:v18];
      goto LABEL_52;
    case 21:
    case 23:
    case 24:
    case 26:
    case 27:
    case 28:
      goto LABEL_62;
    case 25:
      if (qualifier == 8)
      {
        v26 = [expression componentsSeparatedByString:{@", "}];
        v27 = [v26 ef_map:&__block_literal_global_136];

        expression = v27;
      }

      else
      {
        [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(expression, "integerValue")}];
        expression = v26 = expression;
      }

      v19 = [(MFMessageCriterionConverter *)self _orPredicateForAttributes:v17 matchingValue:expression qualifier:qualifier];
      goto LABEL_52;
    case 36:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MFMessageCriterionConverter.m" lineNumber:507 description:@"Criterion code is no longer supported"];

      goto LABEL_65;
    default:
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_62:
        v24 = +[MFMessageCriterionConverter log];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          [MFMessageCriterionConverter _searchPredicateForCriterion:];
        }

LABEL_64:
      }

LABEL_65:
      v20 = 0;
      goto LABEL_66;
  }
}

id __60__MFMessageCriterionConverter__searchPredicateForCriterion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _searchPredicateForCriterion:a2];

  return v2;
}

id __60__MFMessageCriterionConverter__searchPredicateForCriterion___block_invoke_133(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v2, "integerValue")}];

  return v3;
}

- (id)predicateFromMessageCriterion:(id)criterion
{
  criterionForSQL = [criterion criterionForSQL];
  v5 = [(MFMessageCriterionConverter *)self _searchPredicateForCriterion:criterionForSQL];

  return v5;
}

- (int64_t)_defaultCriterionTypeForKey:(id)key
{
  keyCopy = key;
  if (_defaultCriterionTypeForKey__onceToken != -1)
  {
    [MFMessageCriterionConverter _defaultCriterionTypeForKey:];
  }

  v4 = [_defaultCriterionTypeForKey__converterKeyDictionary objectForKeyedSubscript:keyCopy];
  integerValue = [v4 integerValue];

  return integerValue;
}

void __59__MFMessageCriterionConverter__defaultCriterionTypeForKey___block_invoke()
{
  v5[25] = *MEMORY[0x1E69E9840];
  v4[0] = @"Compound";
  v4[1] = @"AnyRecipient";
  v5[0] = &unk_1F2775E68;
  v5[1] = &unk_1F2775E80;
  v0 = *MEMORY[0x1E699A858];
  v4[2] = *MEMORY[0x1E699A9B0];
  v4[3] = v0;
  v5[2] = &unk_1F2775E98;
  v5[3] = &unk_1F2775EB0;
  v4[4] = @"BccRecipient";
  v4[5] = @"senderAddress.emailAddressValue.simpleAddress";
  v5[4] = &unk_1F2775EC8;
  v5[5] = &unk_1F2775EE0;
  v4[6] = @"Spotlight";
  v4[7] = @"body";
  v5[6] = &unk_1F2775EF8;
  v5[7] = &unk_1F2775F10;
  v4[8] = @"Mailbox";
  v4[9] = @"DateReceived";
  v5[8] = &unk_1F2775F28;
  v5[9] = &unk_1F2775F40;
  v4[10] = @"DateSent";
  v4[11] = @"DisplayDate";
  v5[10] = &unk_1F2775F58;
  v5[11] = &unk_1F2775F70;
  v4[12] = @"subject.subjectWithoutPrefix";
  v4[13] = @"VIP";
  v5[12] = &unk_1F2775F88;
  v5[13] = &unk_1F2775FA0;
  v4[14] = @"IsRead";
  v4[15] = @"HasAttachments";
  v5[14] = &unk_1F2775FB8;
  v5[15] = &unk_1F2775FD0;
  v4[16] = @"Flagged";
  v4[17] = @"FlagColor";
  v5[16] = &unk_1F2775FE8;
  v5[17] = &unk_1F2776000;
  v4[18] = @"readLaterDate";
  v4[19] = @"sendLaterDate";
  v5[18] = &unk_1F2776018;
  v5[19] = &unk_1F2776048;
  v4[20] = @"followUpStartDate";
  v4[21] = @"followUpEndDate";
  v5[20] = &unk_1F2776060;
  v5[21] = &unk_1F2776090;
  v4[22] = @"unsubscribeType";
  v4[23] = @"senderBucket";
  v5[22] = &unk_1F27760D8;
  v5[23] = &unk_1F27760A8;
  v4[24] = @"category";
  v5[24] = &unk_1F27760C0;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:25];
  v2 = _defaultCriterionTypeForKey__converterKeyDictionary;
  _defaultCriterionTypeForKey__converterKeyDictionary = v1;

  v3 = *MEMORY[0x1E69E9840];
}

- (int64_t)_criterionTypeForKey:(id)key
{
  keyCopy = key;
  delegate = [(MFMessageCriterionConverter *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v6 = [delegate messageCriterionConverter:self criterionTypeForKey:keyCopy]) == 0)
  {
    v6 = [(MFMessageCriterionConverter *)self _defaultCriterionTypeForKey:keyCopy];
  }

  return v6;
}

- (int64_t)_criterionTypeFromExpression:(id)expression
{
  expressionCopy = expression;
  if (![expressionCopy expressionType])
  {
    constantValue = [expressionCopy constantValue];
    goto LABEL_5;
  }

  if ([expressionCopy expressionType] == 3)
  {
    constantValue = [expressionCopy keyPath];
LABEL_5:
    v6 = constantValue;
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(MFMessageCriterionConverter *)self _criterionTypeForKey:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_messageCriterionForComparisonPredicate:(id)predicate
{
  v49 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  predicateOperatorType = [predicateCopy predicateOperatorType];
  if (predicateOperatorType <= 5)
  {
    if (predicateOperatorType > 2)
    {
      if (predicateOperatorType != 3)
      {
        if (predicateOperatorType == 4)
        {
          v7 = 3;
          v6 = 7;
        }

        else
        {
          v7 = 7;
          v6 = 3;
        }

        goto LABEL_26;
      }
    }

    else
    {
      if (!predicateOperatorType)
      {
        v6 = 5;
        v7 = 5;
        goto LABEL_26;
      }

      if (predicateOperatorType != 1)
      {
        if (predicateOperatorType == 2)
        {
          v6 = 6;
        }

        else
        {
          v6 = 0;
        }

        if (predicateOperatorType == 2)
        {
          v7 = 6;
        }

        else
        {
          v7 = 0;
        }

        goto LABEL_26;
      }
    }

    goto LABEL_23;
  }

  if (predicateOperatorType <= 9)
  {
    if ((predicateOperatorType - 6) >= 2)
    {
      if (predicateOperatorType == 8)
      {
        v6 = 1;
        v7 = 1;
      }

      else
      {
        v6 = 0;
        v7 = 0;
        if (predicateOperatorType == 9)
        {
          v6 = 2;
          v7 = 2;
        }
      }

      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (predicateOperatorType == 10)
  {
    v6 = 8;
    v7 = 8;
    goto LABEL_26;
  }

  if (predicateOperatorType == 11 || (v6 = 0, v7 = 0, predicateOperatorType == 100))
  {
LABEL_23:
    v8 = +[MFMessageCriterionConverter log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MFMessageCriterionConverter _messageCriterionForComparisonPredicate:];
    }

    v6 = 0;
    v7 = 0;
  }

LABEL_26:
  leftExpression = [predicateCopy leftExpression];
  v46 = v7;
  v10 = [(MFMessageCriterionConverter *)self _criterionTypeFromExpression:leftExpression];

  rightExpression = [predicateCopy rightExpression];
  if (![rightExpression expressionType])
  {
    constantValue = [rightExpression constantValue];
    delegate = [(MFMessageCriterionConverter *)self delegate];
    v17 = objc_opt_respondsToSelector();

    if ((v17 & 1) == 0 || (-[MFMessageCriterionConverter delegate](self, "delegate"), v18 = objc_claimAutoreleasedReturnValue(), [v18 messageCriterionConverter:self expressionForConstantValue:constantValue withCriterionType:v10], keyPath = objc_claimAutoreleasedReturnValue(), v18, !keyPath))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = constantValue;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = constantValue;
          v13 = 0;
          goto LABEL_39;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = constantValue;
            goto LABEL_38;
          }

LABEL_37:
          v13 = 0;
LABEL_38:
          v14 = 0;
LABEL_39:
          keyPath = 0;
          goto LABEL_40;
        }

        v19 = MFCriterionExpressionForDate(constantValue);
      }

      keyPath = v19;
    }

    v13 = 0;
    v14 = 0;
LABEL_40:

    goto LABEL_41;
  }

  if ([rightExpression expressionType] != 3)
  {
    constantValue = +[MFMessageCriterionConverter log];
    if (os_log_type_enabled(constantValue, OS_LOG_TYPE_ERROR))
    {
      -[MFMessageCriterionConverter _messageCriterionForComparisonPredicate:].cold.2(buf, [rightExpression expressionType], constantValue);
    }

    goto LABEL_37;
  }

  keyPath = [rightExpression keyPath];
  v13 = 0;
  v14 = 0;
LABEL_41:
  v20 = 0;
  v21 = 9;
  switch(v10)
  {
    case 0:
      p_super = MFLogGeneral();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        ef_publicDescription = [predicateCopy ef_publicDescription];
        [(MFMessageCriterionConverter *)ef_publicDescription _messageCriterionForComparisonPredicate:v47, p_super];
      }

      goto LABEL_129;
    case 1:
      p_super = +[MFMessageCriterionConverter log];
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        [MFMessageCriterionConverter _messageCriterionForComparisonPredicate:];
      }

      goto LABEL_129;
    case 2:
      goto LABEL_118;
    case 3:
      v20 = 0;
      v21 = 40;
      goto LABEL_118;
    case 4:
      v20 = 0;
      v21 = 41;
      goto LABEL_118;
    case 5:
      v33 = MEMORY[0x1E699B088];
      goto LABEL_114;
    case 6:
      v20 = 0;
      v27 = +[MFMessageCriterion toMeCriterion];
      goto LABEL_104;
    case 7:
      v20 = 0;
      v27 = +[MFMessageCriterion ccMeCriterion];
      goto LABEL_104;
    case 8:
      v20 = 0;
      v21 = 35;
      goto LABEL_118;
    case 9:
      v20 = 0;
      v21 = 33;
      goto LABEL_118;
    case 10:
      v20 = 0;
      v21 = 2;
      goto LABEL_118;
    case 11:
      v20 = 0;
      v21 = 23;
      goto LABEL_118;
    case 12:
      v20 = 0;
      v21 = 11;
      goto LABEL_118;
    case 13:
      v20 = 0;
      v21 = 10;
      goto LABEL_118;
    case 14:
      v20 = 0;
      v21 = 12;
      goto LABEL_118;
    case 15:
      v33 = MEMORY[0x1E699B178];
      goto LABEL_114;
    case 16:
      bOOLValue = [v14 BOOLValue];
      if (v46 == 3)
      {
        goto LABEL_125;
      }

      if (v46 != 7)
      {
        p_super = +[MFMessageCriterionConverter log];
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
        {
          [MFMessageCriterionConverter _messageCriterionForComparisonPredicate:];
        }

        goto LABEL_129;
      }

      bOOLValue = bOOLValue ^ 1;
LABEL_125:
      p_super = [MFMessageCriterion senderIsVIPCriterion:bOOLValue];
LABEL_126:
      v20 = 0;
      goto LABEL_131;
    case 17:
    case 19:
      v22 = MessageIsRead;
      if (v10 != 17)
      {
        v22 = MFMessageIsFlagged;
      }

      stringValue = *v22;

      if (v14)
      {
        integerValue = [v14 integerValue];
        v20 = 0;
        v25 = v46;
        if (!integerValue)
        {
          v25 = v6;
        }

        v46 = v25;
      }

      else
      {
        v20 = 0;
      }

      v21 = 27;
      goto LABEL_117;
    case 18:
      v20 = 0;
      v27 = +[MFMessageCriterion hasAttachmentsCriterion];
      goto LABEL_104;
    case 20:
      v20 = 0;
      v27 = [MFMessageCriterion criterionForFlagColor:[v14 integerValue]];
      goto LABEL_104;
    case 21:
      if (!v14)
      {
        goto LABEL_122;
      }

      v20 = 0;
      v27 = [MFMessageCriterion criterionForConversationID:[v14 longLongValue]];
      goto LABEL_104;
    case 22:
      if (!v14)
      {
        goto LABEL_122;
      }

      v20 = 0;
      v27 = [MFMessageCriterion messageIsDeletedCriterion:[v14 BOOLValue]];
      goto LABEL_104;
    case 23:
      predicateOperatorType2 = [predicateCopy predicateOperatorType];
      v20 = 0;
      v41 = v46;
      if (predicateOperatorType2 == 10)
      {
        v41 = 3;
      }

      v46 = v41;
      v21 = 24;
      if (!keyPath && v14)
      {
        v20 = 0;
        [v14 stringValue];
        keyPath = v21 = 24;
      }

      goto LABEL_118;
    case 24:
      if ([v14 integerValue]== 2)
      {
        v20 = 0;
        v27 = +[MFMessageCriterion threadNotifyMessageCriterion];
LABEL_104:
        p_super = v27;
        goto LABEL_131;
      }

      if ([v14 integerValue]== 1)
      {
        v20 = 0;
        v27 = +[MFMessageCriterion threadMuteMessageCriterion];
        goto LABEL_104;
      }

LABEL_122:
      v20 = 0;
      p_super = 0;
LABEL_131:

      v44 = *MEMORY[0x1E69E9840];

      return p_super;
    case 25:
      if (v13)
      {
        v34 = [v13 ef_mapSelector:sel_stringValue];
        v35 = [v34 componentsJoinedByString:{@", "}];

        v20 = 0;
        v21 = 51;
LABEL_99:
        keyPath = v35;
      }

      else if (v14)
      {
        stringValue = [v14 stringValue];

        v20 = 0;
        v21 = 51;
LABEL_117:
        keyPath = stringValue;
      }

      else
      {
        v20 = 0;
        v21 = 51;
      }

LABEL_118:
      v43 = [[MFMessageCriterion alloc] initWithType:v21 qualifier:v46 expression:keyPath];
      p_super = &v43->super;
      if (v20)
      {
        [(MFMessageCriterion *)v43 setCriterionIdentifier:v20];
      }

      goto LABEL_131;
    case 26:
      v33 = MEMORY[0x1E699B130];
LABEL_114:
      v20 = *v33;
      v21 = 1;
      goto LABEL_118;
    case 27:
      p_super = [objc_alloc(MEMORY[0x1E699B200]) initWithHash:{-[NSObject longLongValue](v14, "longLongValue")}];
      v28 = [MFMessageCriterion alloc];
      stringValue2 = [p_super stringValue];
      v30 = [(MFMessageCriterion *)v28 initWithType:38 qualifier:v46 expression:stringValue2];

      goto LABEL_130;
    case 28:
      delegate2 = [(MFMessageCriterionConverter *)self delegate];
      p_super = [delegate2 mailAccountForIdentifier:keyPath];

      v31 = [MFMessageCriterion criterionForAccount:p_super];
      goto LABEL_111;
    case 29:
      v20 = 0;
      v21 = 46;
      goto LABEL_118;
    case 30:
      bOOLValue2 = [v14 BOOLValue];
      v38 = 5;
      if (!bOOLValue2)
      {
        v38 = 6;
      }

      v46 = v38;

      v39 = [MEMORY[0x1E695DF00] now];
      v35 = MFCriterionExpressionForDate(v39);

      v20 = 0;
      v14 = 0;
      v21 = 46;
      goto LABEL_99;
    case 31:
      v20 = 0;
      v21 = 49;
      goto LABEL_118;
    case 32:
      v20 = 0;
      v21 = 47;
      goto LABEL_118;
    case 33:
      v20 = 0;
      v21 = 48;
      goto LABEL_118;
    case 34:
      p_super = +[MFMessageCriterion followUpMessageCriterion];
      if (([v14 BOOLValue]& 1) != 0)
      {
        goto LABEL_126;
      }

      v31 = [MFMessageCriterion notCriterionWithCriterion:p_super];
LABEL_111:
      v30 = v31;
      goto LABEL_130;
    case 35:
      v20 = 0;
      v27 = [MFMessageCriterion messageCriterionForUnsubscribeTypeNotMatching:[v14 integerValue]];
      goto LABEL_104;
    case 36:
      v20 = 0;
      v27 = [MFMessageCriterion criterionForCategoryType:[v14 unsignedLongValue]];
      goto LABEL_104;
    default:
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        p_super = MFLogGeneral();
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
        {
          [MFMessageCriterionConverter _messageCriterionForComparisonPredicate:];
        }

LABEL_129:
        v30 = 0;
LABEL_130:

        v20 = 0;
        p_super = v30;
      }

      else
      {
        p_super = 0;
      }

      goto LABEL_131;
  }
}

- (id)_messageCriterionForCompoundPredicate:(id)predicate
{
  predicateCopy = predicate;
  subpredicates = [predicateCopy subpredicates];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__MFMessageCriterionConverter__messageCriterionForCompoundPredicate___block_invoke;
  v14[3] = &unk_1E7AA6FC8;
  v14[4] = self;
  v6 = [subpredicates ef_compactMap:v14];

  compoundPredicateType = [predicateCopy compoundPredicateType];
  if (compoundPredicateType)
  {
    if (compoundPredicateType == 1)
    {
      v8 = [MFMessageCriterion andCompoundCriterionWithCriteria:v6];
      goto LABEL_6;
    }

    if (compoundPredicateType == 2)
    {
      v8 = [MFMessageCriterion orCompoundCriterionWithCriteria:v6];
LABEL_6:
      firstObject = v8;
      goto LABEL_17;
    }

    firstObject = 0;
  }

  else
  {
    if ([v6 count] > 1)
    {
      firstObject = MFLogGeneral();
      if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
      {
        [MFMessageCriterionConverter _messageCriterionForCompoundPredicate:];
      }

      v12 = 0;
    }

    else
    {
      firstObject = [v6 firstObject];
      if (![firstObject qualifier])
      {
        criteria = [firstObject criteria];
        v11 = [criteria count];

        if (v11 <= 1)
        {
          [firstObject setQualifier:4];
          goto LABEL_17;
        }
      }

      v12 = [MFMessageCriterion notCriterionWithCriterion:firstObject];
    }

    firstObject = v12;
  }

LABEL_17:

  return firstObject;
}

id __69__MFMessageCriterionConverter__messageCriterionForCompoundPredicate___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) messageCriterionFromPredicate:a2];

  return v2;
}

- (id)messageCriterionFromPredicate:(id)predicate
{
  predicateCopy = predicate;
  if ([predicateCopy ef_matchesEverything])
  {
    v5 = +[MFMessageCriterion matchEverythingCriterion];
LABEL_9:
    v6 = v5;
    goto LABEL_10;
  }

  if ([predicateCopy ef_matchesNothing])
  {
    v5 = +[MFMessageCriterion matchNothingCriterion];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MFMessageCriterionConverter *)self _messageCriterionForCompoundPredicate:predicateCopy];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MFMessageCriterionConverter *)self _messageCriterionForComparisonPredicate:predicateCopy];
    goto LABEL_9;
  }

  v8 = MFLogGeneral();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [MFMessageCriterionConverter messageCriterionFromPredicate:];
  }

  v6 = 0;
LABEL_10:

  return v6;
}

- (id)messageCriterionFromPredicateFormatString:(id)string
{
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:string];
  if (v4)
  {
    v5 = [(MFMessageCriterionConverter *)self messageCriterionFromPredicate:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (MFMessageCriterionConverterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_predicateForKey:value:qualifier:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_searchPredicateForCriterion:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(&dword_1B0389000, v0, OS_LOG_TYPE_DEBUG, "Attempted to handle unsupported criterion %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)_searchPredicateForCriterion:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_searchPredicateForCriterion:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_searchPredicateForCriterion:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_1B0389000, v1, OS_LOG_TYPE_DEBUG, "Returning criterion:%@ result:%@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_messageCriterionForComparisonPredicate:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_messageCriterionForComparisonPredicate:(os_log_t)log .cold.2(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "Unsupported expressionType:%lu", buf, 0xCu);
}

- (void)_messageCriterionForComparisonPredicate:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(&dword_1B0389000, v0, OS_LOG_TYPE_DEBUG, "Attempted to handle unsupported predicate %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)_messageCriterionForComparisonPredicate:(os_log_t)log .cold.4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "Received unknown criterion type for predicate: %@", buf, 0xCu);
}

- (void)messageCriterionFromPredicate:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end