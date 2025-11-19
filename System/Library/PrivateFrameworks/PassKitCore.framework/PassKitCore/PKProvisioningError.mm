@interface PKProvisioningError
+ (id)errorWithCommonType:(unint64_t)a3 severity:(unint64_t)a4;
+ (id)errorWithSeverity:(unint64_t)a3;
+ (id)errorWithTitle:(id)a3 message:(id)a4 severity:(unint64_t)a5;
+ (id)errorWithTitle:(id)a3 message:(id)a4 severity:(unint64_t)a5 recoveryTitle:(id)a6 recoveryURL:(id)a7;
+ (id)errorWithTitleKey:(id)a3 messageKey:(id)a4 severity:(unint64_t)a5;
+ (id)errorWithUnderlyingError:(id)a3 defaultSeverity:(unint64_t)a4;
+ (id)userCancelError;
- (BOOL)hasLocalizedTitleAndMessage;
- (NSError)displayableError;
- (NSString)localizedMessage;
- (NSString)localizedRecoveryDescription;
- (NSString)localizedTitle;
- (PKProvisioningError)initWithCoder:(id)a3;
- (id)_initWithSeverity:(unint64_t)a3 localizedTitle:(id)a4 localizedMessage:(id)a5;
- (id)_initWithSeverity:(unint64_t)a3 userInfo:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)userInfo;
- (void)encodeWithCoder:(id)a3;
- (void)setLocalizedMessage:(id)a3;
- (void)setLocalizedRecoveryDescription:(id)a3;
- (void)setLocalizedTitle:(id)a3;
- (void)setRecoveryUrl:(id)a3;
@end

@implementation PKProvisioningError

- (id)_initWithSeverity:(unint64_t)a3 userInfo:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = PKProvisioningError;
  v7 = [(PKProvisioningError *)&v14 initWithDomain:@"PKProvisioningErrorDomain" code:a3 userInfo:v6];
  v8 = v7;
  if (v7)
  {
    v7->_severity = a3;
    v9 = [v6 mutableCopy];
    v10 = v9;
    if (!v9)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    objc_storeStrong(&v8->_userInfo, v10);
    if (!v9)
    {
    }

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    internalDebugDescriptions = v8->_internalDebugDescriptions;
    v8->_internalDebugDescriptions = v11;
  }

  return v8;
}

- (id)_initWithSeverity:(unint64_t)a3 localizedTitle:(id)a4 localizedMessage:(id)a5
{
  v8 = MEMORY[0x1E695DF90];
  v9 = a5;
  v10 = a4;
  v11 = objc_alloc_init(v8);
  v12 = [v10 copy];

  [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x1E696A578]];
  v13 = [v9 copy];

  [v11 setObject:v13 forKeyedSubscript:*MEMORY[0x1E696A598]];
  v14 = [(PKProvisioningError *)self _initWithSeverity:a3 userInfo:v11];

  return v14;
}

+ (id)errorWithTitleKey:(id)a3 messageKey:(id)a4 severity:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [PKProvisioningError alloc];
  v10 = PKLocalizedPaymentString(v8, 0);

  v11 = PKLocalizedPaymentString(v7, 0);

  v12 = [(PKProvisioningError *)v9 _initWithSeverity:a5 localizedTitle:v10 localizedMessage:v11];

  return v12;
}

+ (id)errorWithTitle:(id)a3 message:(id)a4 severity:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[PKProvisioningError alloc] _initWithSeverity:a5 localizedTitle:v8 localizedMessage:v7];

  return v9;
}

+ (id)errorWithTitle:(id)a3 message:(id)a4 severity:(unint64_t)a5 recoveryTitle:(id)a6 recoveryURL:(id)a7
{
  v25[3] = *MEMORY[0x1E69E9840];
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [PKProvisioningError alloc];
  v24[0] = *MEMORY[0x1E696A590];
  v16 = PKLocalizedPaymentString(v12, 0);

  v23 = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  v25[0] = v17;
  v25[1] = MEMORY[0x1E695E118];
  v24[1] = @"PKDisplayableErrorIsPreferredActionKey";
  v24[2] = @"PKErrorRecoveryURL";
  v25[2] = v11;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];

  v19 = [(PKProvisioningError *)v15 _initWithSeverity:a5 userInfo:v18];
  v20 = PKLocalizedPaymentString(v14, 0);

  [v19 setLocalizedTitle:v20];
  v21 = PKLocalizedPaymentString(v13, 0);

  [v19 setLocalizedMessage:v21];

  return v19;
}

+ (id)errorWithCommonType:(unint64_t)a3 severity:(unint64_t)a4
{
  v5 = PKDisplayableErrorForCommonType(a3, 0);
  v6 = [PKProvisioningError errorWithUnderlyingError:v5 defaultSeverity:a4];

  return v6;
}

+ (id)errorWithUnderlyingError:(id)a3 defaultSeverity:(unint64_t)a4
{
  v69[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy__23;
  v67 = __Block_byref_object_dispose__23;
  v68 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__23;
  v61 = __Block_byref_object_dispose__23;
  v62 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v7 = [v6 userInfo];
  v8 = [v7 mutableCopy];

  v9 = [v8 objectForKeyedSubscript:@"PKErrorSeverity"];
  v10 = PKProvisioningErrorSeverityFromString(v9);

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = a4;
  }

  v54[3] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__PKProvisioningError_errorWithUnderlyingError_defaultSeverity___block_invoke;
  aBlock[3] = &unk_1E79CFE60;
  v12 = v6;
  v49 = v12;
  v50 = &v63;
  v51 = &v57;
  v52 = &v53;
  v13 = _Block_copy(aBlock);
  v14 = [v12 domain];
  v15 = [v12 code];
  if ([v14 isEqualToString:@"PKProvisioningErrorDomain"])
  {
    v16 = [v12 copy];
    v17 = 0;
    goto LABEL_38;
  }

  if (![v14 isEqualToString:@"PKDisplayableError"])
  {
    if ([v14 isEqualToString:*MEMORY[0x1E696A978]])
    {
      v24 = PKLocalizedPaymentString(&cfstr_CouldNotConnec.isa, 0);
      v25 = v64[5];
      v64[5] = v24;

      v26 = PKLocalizedPaymentString(&cfstr_CouldNotConnec_0.isa, 0);
      v27 = v58[5];
      v58[5] = v26;

      v17 = PKLocalizedPaymentString(&cfstr_CouldNotConnec_1.isa, 0);
      v28 = v54;
      v22 = 0;
      if (v15 == -1005)
      {
        v29 = 2;
      }

      else
      {
        v29 = 4;
      }

      goto LABEL_22;
    }

    if ([v14 isEqualToString:@"PKWebServiceErrorDomain"])
    {
      v22 = 0;
      v23 = 1;
      if (v15 > 40455)
      {
        if (((v15 - 60039) > 0x33 || ((1 << (v15 + 121)) & 0x9100000007FFFLL) == 0) && (v15 - 40456) >= 2)
        {
          v17 = 0;
          if ((v15 - 60009) >= 2)
          {
            goto LABEL_31;
          }
        }

LABEL_16:
        v22 = 0;
        v17 = 0;
        v28 = v54;
        v29 = 3;
LABEL_22:
        v28[3] = v29;
LABEL_30:
        v23 = 1;
        goto LABEL_31;
      }

      if (v15 <= 1)
      {
        if (v15)
        {
          v17 = 0;
          if (v15 == 1)
          {
            v22 = 0;
            v17 = 0;
            v23 = 1;
            v54[3] = 1;
          }

          goto LABEL_31;
        }
      }

      else if ((v15 - 2) >= 4)
      {
        v17 = 0;
        if (v15 != 40107)
        {
          goto LABEL_31;
        }

        goto LABEL_16;
      }

      v22 = [v12 localizedFailureReason];

      if (!v22)
      {
LABEL_29:
        v17 = 0;
        goto LABEL_30;
      }

      v35 = [v12 localizedFailureReason];
      v36 = v64[5];
      v64[5] = v35;

      v37 = [v12 localizedRecoverySuggestion];
      v38 = v58[5];
      v58[5] = v37;

LABEL_28:
      v22 = 0;
      goto LABEL_29;
    }

    if (![v14 isEqualToString:@"PKPaymentWebServiceErrorDomain"])
    {
      v13[2](v13);
      goto LABEL_28;
    }

    v30 = [v12 localizedFailureReason];
    v31 = v64[5];
    v64[5] = v30;

    v32 = [v12 localizedRecoverySuggestion];
    v33 = v58[5];
    v58[5] = v32;

    v34 = 3;
    if (v15 > 40500)
    {
      switch(v15)
      {
        case 60000:
        case 60001:
        case 60002:
        case 60003:
        case 60005:
        case 60006:
        case 60007:
        case 60008:
        case 60011:
        case 60018:
        case 60022:
        case 60028:
        case 60031:
        case 60032:
        case 60033:
        case 60034:
        case 60035:
        case 60036:
        case 60037:
        case 60057:
        case 60060:
        case 60061:
        case 60066:
        case 60067:
        case 60068:
        case 60075:
        case 60076:
        case 60077:
        case 60078:
        case 60079:
        case 60080:
        case 60084:
        case 60085:
        case 60086:
        case 60088:
        case 60089:
        case 60091:
        case 60103:
        case 60104:
          goto LABEL_20;
        case 60004:
        case 60009:
        case 60010:
        case 60015:
        case 60016:
        case 60017:
        case 60019:
        case 60020:
        case 60021:
        case 60023:
        case 60024:
        case 60025:
        case 60039:
        case 60040:
        case 60041:
        case 60042:
        case 60043:
        case 60044:
        case 60045:
        case 60046:
        case 60047:
        case 60048:
        case 60049:
        case 60050:
        case 60051:
        case 60052:
        case 60053:
        case 60056:
        case 60058:
        case 60059:
        case 60064:
        case 60065:
        case 60069:
        case 60070:
        case 60071:
        case 60083:
        case 60087:
        case 60090:
        case 60093:
          goto LABEL_77;
        case 60012:
        case 60013:
        case 60014:
        case 60026:
        case 60027:
        case 60029:
        case 60030:
        case 60038:
        case 60054:
        case 60055:
        case 60062:
        case 60063:
        case 60092:
          goto LABEL_76;
        case 60072:
        case 60073:
        case 60074:
        case 60081:
        case 60082:
        case 60094:
        case 60095:
        case 60096:
        case 60097:
        case 60098:
        case 60099:
        case 60100:
        case 60101:
        case 60102:
          goto LABEL_78;
        default:
          if (v15 == 40601)
          {
            goto LABEL_20;
          }

          v44 = 40501;
          goto LABEL_75;
      }
    }

    if (v15 > 40306)
    {
      if (v15 > 40398)
      {
        v45 = v15 + 49;
        if ((v15 - 40399) > 0x3A)
        {
          goto LABEL_78;
        }

        if (((1 << v45) & 0x80000001400013) != 0)
        {
          goto LABEL_20;
        }

        if (((1 << v45) & 0x600000000000000) != 0)
        {
          goto LABEL_77;
        }

LABEL_78:
        v47 = [v8 PKNumberForKey:@"PKErrorHTTPResponseStatusCodeKey"];
        v22 = v47;
        v23 = v47 == 0;
        if (v47 && [v47 integerValue] == 500)
        {
          v54[3] = 5;
        }

        if (!v64[5])
        {
          v13[2](v13);
        }

        goto LABEL_8;
      }

      if (v15 == 40307)
      {
LABEL_76:
        v34 = 4;
        goto LABEL_77;
      }

      if (v15 == 40308)
      {
        goto LABEL_20;
      }

      v46 = 40319;
    }

    else
    {
      if (v15 > 40101)
      {
        if (v15 <= 40109)
        {
          if ((v15 - 40106) >= 2)
          {
            v44 = 40102;
            goto LABEL_75;
          }

LABEL_77:
          v54[3] = v34;
          goto LABEL_78;
        }

        if (v15 == 40110)
        {
          goto LABEL_77;
        }

        if (v15 != 40116)
        {
          v44 = 40301;
LABEL_75:
          if (v15 != v44)
          {
            goto LABEL_78;
          }

          goto LABEL_76;
        }

LABEL_20:
        v34 = 5;
        goto LABEL_77;
      }

      if (v15 > 40012)
      {
        if ((v15 - 40013) < 2)
        {
          goto LABEL_77;
        }

        if (v15 == 40016)
        {
          goto LABEL_20;
        }

        goto LABEL_78;
      }

      if (!v15)
      {
        goto LABEL_20;
      }

      v46 = 40001;
    }

    if (v15 == v46)
    {
      goto LABEL_77;
    }

    goto LABEL_78;
  }

  v18 = PKTitleForDisplayableError(v12);
  v19 = v64[5];
  v64[5] = v18;

  v20 = [v12 localizedRecoverySuggestion];
  v21 = v58[5];
  v58[5] = v20;

  v22 = 0;
  v23 = 0;
LABEL_8:
  v17 = 0;
LABEL_31:
  [v8 setObject:v64[5] forKeyedSubscript:*MEMORY[0x1E696A578]];
  [v8 setObject:v58[5] forKeyedSubscript:*MEMORY[0x1E696A598]];
  if (v17)
  {
    v69[0] = v17;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:1];
    [v8 setObject:v39 forKeyedSubscript:*MEMORY[0x1E696A590]];

    [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"PKDisplayableErrorIsPreferredActionKey"];
  }

  [v8 setObject:0 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  v40 = [PKProvisioningError alloc];
  v16 = [(PKProvisioningError *)v40 _initWithSeverity:v54[3] userInfo:v8];
  objc_storeStrong(v16 + 9, a3);
  if (v23)
  {
    v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Underlying(D: %@, Code: %ld)", v14, v15];
    [v16 addInternalDebugDescription:v41];
  }

  if (v22)
  {
    v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Received HTTP %@", v22];
    [v16 addInternalDebugDescription:v42];
  }

LABEL_38:
  _Block_object_dispose(&v53, 8);

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v63, 8);

  return v16;
}

void __64__PKProvisioningError_errorWithUnderlyingError_defaultSeverity___block_invoke(uint64_t a1)
{
  v12 = 0;
  v2 = _PKSharingDisplayableError(*(a1 + 32), &v12, 0);
  v3 = v2;
  if (v2)
  {
    v4 = PKTitleForDisplayableError(v2);
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = [v3 localizedRecoverySuggestion];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = *(*(a1 + 56) + 8);
    if (v12)
    {
      v11 = 5;
    }

    else
    {
      v11 = *(v10 + 24);
    }

    *(v10 + 24) = v11;
  }
}

+ (id)errorWithSeverity:(unint64_t)a3
{
  v3 = [[PKProvisioningError alloc] _initWithSeverity:a3 userInfo:0];

  return v3;
}

+ (id)userCancelError
{
  v2 = [[PKProvisioningError alloc] _initWithSeverity:1 userInfo:0];

  return v2;
}

- (NSString)localizedTitle
{
  v2 = [(NSMutableDictionary *)self->_userInfo objectForKeyedSubscript:*MEMORY[0x1E696A578]];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = PKLocalizedPaymentString(&cfstr_CouldNotSetUpT.isa, 0);
  }

  v5 = v4;

  return v5;
}

- (void)setLocalizedTitle:(id)a3
{
  v4 = [a3 copy];
  [(NSMutableDictionary *)self->_userInfo setObject:v4 forKeyedSubscript:*MEMORY[0x1E696A578]];
}

- (NSString)localizedMessage
{
  v3 = [(NSMutableDictionary *)self->_userInfo objectForKeyedSubscript:*MEMORY[0x1E696A598]];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = PKLocalizedPaymentString(&cfstr_CouldNotSetUpM.isa, 0);
  }

  v6 = v5;

  if (os_variant_has_internal_ui())
  {
    v7 = [(NSMutableArray *)self->_internalDebugDescriptions count];
    v8 = PKProvisioningErrorSeverityToString(self->_severity);
    v9 = v8;
    if (v7)
    {
      v10 = [(NSMutableArray *)self->_internalDebugDescriptions componentsJoinedByString:@"\n• "];
      v11 = [v6 stringByAppendingFormat:@"\n\n[INTERNAL] - %@ \n• %@", v9, v10];
    }

    else
    {
      v11 = [v6 stringByAppendingFormat:@"\n\n[INTERNAL] - %@", v8];
    }
  }

  else
  {
    v11 = v6;
  }

  return v11;
}

- (void)setLocalizedMessage:(id)a3
{
  v4 = [a3 copy];
  [(NSMutableDictionary *)self->_userInfo setObject:v4 forKeyedSubscript:*MEMORY[0x1E696A598]];
}

- (BOOL)hasLocalizedTitleAndMessage
{
  v3 = [(NSMutableDictionary *)self->_userInfo objectForKeyedSubscript:*MEMORY[0x1E696A598]];
  if (v3)
  {
    v4 = [(NSMutableDictionary *)self->_userInfo objectForKeyedSubscript:*MEMORY[0x1E696A578]];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSError)displayableError
{
  v3 = [(PKProvisioningError *)self localizedTitle];
  v4 = [(PKProvisioningError *)self localizedMessage];
  v5 = [(PKProvisioningError *)self underlyingError];
  v6 = [(PKProvisioningError *)self userInfo];
  v7 = PKDisplayableErrorCustomWithType(-1, v3, v4, v5, v6);

  return v7;
}

- (NSString)localizedRecoveryDescription
{
  v2 = [(NSMutableDictionary *)self->_userInfo objectForKeyedSubscript:*MEMORY[0x1E696A590]];
  v3 = [v2 firstObject];

  return v3;
}

- (void)setLocalizedRecoveryDescription:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v10 = a3;
    v5 = MEMORY[0x1E695DEC8];
    v6 = a3;
    v7 = [v5 arrayWithObjects:&v10 count:1];
    [(NSMutableDictionary *)self->_userInfo setObject:v7 forKeyedSubscript:*MEMORY[0x1E696A590], v10, v11];

    userInfo = self->_userInfo;
    v9 = MEMORY[0x1E695E118];
  }

  else
  {
    [(NSMutableDictionary *)self->_userInfo setObject:0 forKeyedSubscript:*MEMORY[0x1E696A590]];
    userInfo = self->_userInfo;
    v9 = MEMORY[0x1E695E110];
  }

  [(NSMutableDictionary *)userInfo setObject:v9 forKeyedSubscript:@"PKDisplayableErrorIsPreferredActionKey"];
}

- (void)setRecoveryUrl:(id)a3
{
  userInfo = self->_userInfo;
  if (a3)
  {
    [(NSMutableDictionary *)userInfo setObject:a3 forKeyedSubscript:@"PKErrorRecoveryURL"];
    v5 = MEMORY[0x1E695E118];
  }

  else
  {
    [(NSMutableDictionary *)userInfo setObject:0 forKeyedSubscript:@"PKErrorRecoveryURL"];
    v5 = MEMORY[0x1E695E110];
  }

  v6 = self->_userInfo;

  [(NSMutableDictionary *)v6 setObject:v5 forKeyedSubscript:@"PKDisplayableErrorIsPreferredActionKey"];
}

- (id)userInfo
{
  v2 = [(NSMutableDictionary *)self->_userInfo copy];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[PKProvisioningError alloc] _initWithSeverity:self->_severity userInfo:self->_userInfo];
  v5 = [(NSError *)self->_underlyingError copy];
  v6 = v4[9];
  v4[9] = v5;

  v7 = [(NSMutableArray *)self->_internalDebugDescriptions mutableCopy];
  v8 = v4[6];
  v4[6] = v7;

  return v4;
}

- (PKProvisioningError)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = PKProvisioningError;
  v5 = [(PKProvisioningError *)&v24 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"underlyingError"];
    underlyingError = v5->_underlyingError;
    v5->_underlyingError = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"severity"];
    v5->_severity = PKProvisioningErrorSeverityFromString(v8);

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"internalDebugDescriptions"];
    v13 = [v12 mutableCopy];
    internalDebugDescriptions = v5->_internalDebugDescriptions;
    v5->_internalDebugDescriptions = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = [v15 setWithObjects:{v16, v17, v18, objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"userInfo"];
    v21 = [v20 mutableCopy];
    userInfo = v5->_userInfo;
    v5->_userInfo = v21;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = PKProvisioningError;
  v4 = a3;
  [(PKProvisioningError *)&v7 encodeWithCoder:v4];
  [v4 encodeObject:self->_underlyingError forKey:{@"underlyingError", v7.receiver, v7.super_class}];
  v5 = PKProvisioningErrorSeverityToString(self->_severity);
  [v4 encodeObject:v5 forKey:@"severity"];

  [v4 encodeObject:self->_internalDebugDescriptions forKey:@"internalDebugDescriptions"];
  v6 = [(NSMutableDictionary *)self->_userInfo copy];
  [v4 encodeObject:v6 forKey:@"userInfo"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: ", v5];

  v7 = PKProvisioningErrorSeverityToString(self->_severity);
  [v6 appendFormat:@"severity: '%@'; ", v7];

  [v6 appendFormat:@"internalDebugDescriptions: '%@'; ", self->_internalDebugDescriptions];
  [v6 appendFormat:@"underlyingError: '%@'; ", self->_underlyingError];
  [v6 appendFormat:@"userInfo: '%@'; ", self->_userInfo];
  [v6 appendFormat:@">"];
  v8 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v8;
}

@end