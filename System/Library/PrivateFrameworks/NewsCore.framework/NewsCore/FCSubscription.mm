@interface FCSubscription
+ (id)pendingSubscriptionWithSubscriptionID:(id)a3 url:(id)a4 title:(id)a5 pollingURL:(id)a6 dateAdded:(id)a7;
+ (id)subscriptionWithSubscriptionID:(id)a3 dictionaryRepresentation:(id)a4;
+ (id)subscriptionWithSubscriptionID:(id)a3 tagID:(id)a4 type:(unint64_t)a5 order:(id)a6 origin:(unint64_t)a7 groupID:(id)a8 dateAdded:(id)a9 notificationsEnabled:(BOOL)a10 zone:(unint64_t)a11;
- (FCSubscription)initWithSubscriptionID:(id)a3 tagID:(id)a4 groupID:(id)a5 dateAdded:(id)a6 subscriptionType:(unint64_t)a7 order:(id)a8 origin:(unint64_t)a9 notificationsEnabled:(BOOL)a10 zone:(unint64_t)a11;
- (FCSubscription)initWithSubscriptionID:(id)a3 url:(id)a4 title:(id)a5 pollingURL:(id)a6 dateAdded:(id)a7;
- (id)asCKRecord;
- (id)asReorderableTagSubscription;
- (id)copyWithOrder:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int64_t)comparePriority:(id)a3;
- (unint64_t)priority;
@end

@implementation FCSubscription

- (id)asReorderableTagSubscription
{
  if ([(FCSubscription *)self subscriptionType])
  {
    v3 = 0;
  }

  else
  {
    v3 = self;
  }

  return v3;
}

+ (id)subscriptionWithSubscriptionID:(id)a3 tagID:(id)a4 type:(unint64_t)a5 order:(id)a6 origin:(unint64_t)a7 groupID:(id)a8 dateAdded:(id)a9 notificationsEnabled:(BOOL)a10 zone:(unint64_t)a11
{
  v18 = a9;
  v19 = a8;
  v20 = a6;
  v21 = a4;
  v22 = a3;
  LOBYTE(v25) = a10;
  v23 = [[a1 alloc] initWithSubscriptionID:v22 tagID:v21 groupID:v19 dateAdded:v18 subscriptionType:a5 order:v20 origin:a7 notificationsEnabled:v25 zone:a11];

  return v23;
}

+ (id)pendingSubscriptionWithSubscriptionID:(id)a3 url:(id)a4 title:(id)a5 pollingURL:(id)a6 dateAdded:(id)a7
{
  if (a4)
  {
    v11 = a7;
    v12 = a6;
    v13 = a5;
    v14 = a4;
    v15 = a3;
    v16 = [[FCSubscription alloc] initWithSubscriptionID:v15 url:v14 title:v13 pollingURL:v12 dateAdded:v11];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (FCSubscription)initWithSubscriptionID:(id)a3 tagID:(id)a4 groupID:(id)a5 dateAdded:(id)a6 subscriptionType:(unint64_t)a7 order:(id)a8 origin:(unint64_t)a9 notificationsEnabled:(BOOL)a10 zone:(unint64_t)a11
{
  v44 = *MEMORY[0x1E69E9840];
  v18 = a3;
  obj = a4;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a8;
  if (!v18 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "subscriptionID != nil"];
    *buf = 136315906;
    v37 = "[FCSubscription initWithSubscriptionID:tagID:groupID:dateAdded:subscriptionType:order:origin:notificationsEnabled:zone:]";
    v38 = 2080;
    v39 = "FCSubscription.m";
    v40 = 1024;
    v41 = 89;
    v42 = 2114;
    v43 = v31;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v19)
    {
      goto LABEL_6;
    }
  }

  else if (v19)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagID != nil"];
    *buf = 136315906;
    v37 = "[FCSubscription initWithSubscriptionID:tagID:groupID:dateAdded:subscriptionType:order:origin:notificationsEnabled:zone:]";
    v38 = 2080;
    v39 = "FCSubscription.m";
    v40 = 1024;
    v41 = 90;
    v42 = 2114;
    v43 = v32;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!v21 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "dateAdded != nil"];
    *buf = 136315906;
    v37 = "[FCSubscription initWithSubscriptionID:tagID:groupID:dateAdded:subscriptionType:order:origin:notificationsEnabled:zone:]";
    v38 = 2080;
    v39 = "FCSubscription.m";
    v40 = 1024;
    v41 = 91;
    v42 = 2114;
    v43 = v33;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v35.receiver = self;
  v35.super_class = FCSubscription;
  v23 = [(FCSubscription *)&v35 init];
  v24 = v23;
  if (v23)
  {
    if (v19)
    {
      objc_storeStrong(&v23->_tagID, obj);
      v24->_subscriptionType = a7;
      v25 = [v22 copy];
      order = v24->_order;
      v24->_order = v25;

      v24->_subscriptionOrigin = a9;
      objc_storeStrong(&v24->_subscriptionID, a3);
      v27 = [v21 copy];
      dateAdded = v24->_dateAdded;
      v24->_dateAdded = v27;

      v24->_notificationsEnabled = a10;
      objc_storeStrong(&v24->_groupID, a5);
      v24->_zone = a11;
    }

    else
    {

      v24 = 0;
    }
  }

  v29 = *MEMORY[0x1E69E9840];
  return v24;
}

- (FCSubscription)initWithSubscriptionID:(id)a3 url:(id)a4 title:(id)a5 pollingURL:(id)a6 dateAdded:(id)a7
{
  v35 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (!v13 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "subscriptionID != nil"];
    *buf = 136315906;
    v28 = "[FCSubscription initWithSubscriptionID:url:title:pollingURL:dateAdded:]";
    v29 = 2080;
    v30 = "FCSubscription.m";
    v31 = 1024;
    v32 = 117;
    v33 = 2114;
    v34 = v24;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v17)
    {
      goto LABEL_6;
    }
  }

  else if (v17)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "dateAdded != nil"];
    *buf = 136315906;
    v28 = "[FCSubscription initWithSubscriptionID:url:title:pollingURL:dateAdded:]";
    v29 = 2080;
    v30 = "FCSubscription.m";
    v31 = 1024;
    v32 = 118;
    v33 = 2114;
    v34 = v25;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v26.receiver = self;
  v26.super_class = FCSubscription;
  v18 = [(FCSubscription *)&v26 init];
  v19 = v18;
  if (v18)
  {
    if (v14 && v16)
    {
      objc_storeStrong(&v18->_url, a4);
      objc_storeStrong(&v19->_title, a5);
      objc_storeStrong(&v19->_pollingURL, a6);
      v19->_subscriptionType = 1;
      objc_storeStrong(&v19->_subscriptionID, a3);
      v20 = [v17 copy];
      dateAdded = v19->_dateAdded;
      v19->_dateAdded = v20;
    }

    else
    {
      dateAdded = v18;
      v19 = 0;
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return v19;
}

- (unint64_t)priority
{
  v2 = [(FCSubscription *)self subscriptionType];
  if (v2 > 5)
  {
    return 0;
  }

  else
  {
    return qword_1B681A6D0[v2];
  }
}

- (int64_t)comparePriority:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "priority")}];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[FCSubscription priority](self, "priority")}];
  v7 = [v5 compare:v6];

  if (!v7)
  {
    v8 = [v4 dateAdded];
    v9 = [(FCSubscription *)self dateAdded];
    v7 = [v8 compare:v9];

    if (!v7)
    {
      if ([(FCSubscription *)self subscriptionType])
      {
        v7 = 1;
      }

      else
      {
        v7 = -1;
      }
    }
  }

  return v7;
}

- (id)asCKRecord
{
  v29 = *MEMORY[0x1E69E9840];
  if ([(FCSubscription *)self isDeprecated])
  {
    v3 = 0;
    goto LABEL_22;
  }

  if (qword_1EDB27048 != -1)
  {
    dispatch_once(&qword_1EDB27048, &__block_literal_global_34);
  }

  v4 = [(FCSubscription *)self zone];
  v5 = &_MergedGlobals_143;
  if (v4 == 1)
  {
    v5 = &qword_1EDB27040;
  }

  v6 = *v5;
  v7 = objc_alloc(MEMORY[0x1E695BA70]);
  v8 = [(FCSubscription *)self subscriptionID];
  v9 = [v7 initWithRecordName:v8 zoneID:v6];

  v3 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"Subscription" recordID:v9];
  v10 = [(FCSubscription *)self dateAdded];
  [v3 setObject:v10 forKeyedSubscript:@"dateAdded"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{FCCKSubscriptionOriginFromFCSubscriptionOrigin(-[FCSubscription subscriptionOrigin](self, "subscriptionOrigin"))}];
  [v3 setObject:v11 forKeyedSubscript:@"subscriptionOrigin"];

  if (![(FCSubscription *)self subscriptionType])
  {
    [v3 setObject:@"tag" forKeyedSubscript:@"subscriptionType"];
    v16 = [(FCSubscription *)self tagID];
    [v3 setObject:v16 forKeyedSubscript:@"tagID"];

    v17 = [(FCSubscription *)self order];
    [v3 setObject:v17 forKeyedSubscript:@"subscriptionOrder"];

    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[FCSubscription notificationsEnabled](self, "notificationsEnabled")}];
    v15 = FCCKSubscriptionNotificationsEnabledKey;
    goto LABEL_19;
  }

  if ([(FCSubscription *)self subscriptionType]!= 2)
  {
    if ([(FCSubscription *)self subscriptionType]== 3)
    {
      v18 = FCCKSubscriptionTypeAutoFavoriteTag;
    }

    else if ([(FCSubscription *)self subscriptionType]== 4)
    {
      v18 = FCCKSubscriptionTypeGroupableTag;
    }

    else
    {
      if ([(FCSubscription *)self subscriptionType]!= 5)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }

        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unrecognized subscription type"];
        v21 = 136315906;
        v22 = "[FCSubscription asCKRecord]";
        v23 = 2080;
        v24 = "FCSubscription.m";
        v25 = 1024;
        v26 = 275;
        v27 = 2114;
        v28 = v14;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v21, 0x26u);
        goto LABEL_20;
      }

      v18 = FCCKSubscriptionTypeIgnoredTag;
    }

    [v3 setObject:*v18 forKeyedSubscript:@"subscriptionType"];
    v14 = [(FCSubscription *)self tagID];
    v15 = FCCKSubscriptionTagIDKey;
LABEL_19:
    [v3 setObject:v14 forKeyedSubscript:*v15];
LABEL_20:

    goto LABEL_21;
  }

  [v3 setObject:@"mutedTag" forKeyedSubscript:@"subscriptionType"];
  v12 = [(FCSubscription *)self tagID];
  [v3 setObject:v12 forKeyedSubscript:@"tagID"];

  v13 = [(FCSubscription *)self groupID];

  if (v13)
  {
    v14 = [(FCSubscription *)self groupID];
    v15 = FCCKSubscriptionGroupIDKey;
    goto LABEL_19;
  }

LABEL_21:

LABEL_22:
  v19 = *MEMORY[0x1E69E9840];

  return v3;
}

uint64_t __28__FCSubscription_asCKRecord__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695BA90]);
  v1 = *MEMORY[0x1E695B728];
  v2 = [v0 initWithZoneName:@"Subscriptions" ownerName:*MEMORY[0x1E695B728]];
  v3 = _MergedGlobals_143;
  _MergedGlobals_143 = v2;

  v4 = [objc_alloc(MEMORY[0x1E695BA90]) initWithZoneName:@"SensitiveSubscriptions" ownerName:v1];
  v5 = qword_1EDB27040;
  qword_1EDB27040 = v4;

  return MEMORY[0x1EEE66BB8](v4, v5);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(FCSubscription *)self subscriptionID];
  v5 = [(FCSubscription *)self subscriptionType]- 1;
  if (v5 > 4)
  {
    v6 = @"tag";
  }

  else
  {
    v6 = off_1E7C3B8E0[v5];
  }

  v7 = [(FCSubscription *)self order];
  v8 = [(FCSubscription *)self dateAdded];
  v9 = [v3 stringWithFormat:@"{id: %@ type: %@ order: %@ dateAdded: %@ notifications: %d}", v4, v6, v7, v8, -[FCSubscription notificationsEnabled](self, "notificationsEnabled")];

  return v9;
}

- (id)copyWithOrder:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(FCSubscription *)self subscriptionType]&& os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"expected equality between %s and %s", "self.subscriptionType", "FCSubscriptionTypeTag"];
    *buf = 136315906;
    v18 = "[FCSubscription copyWithOrder:]";
    v19 = 2080;
    v20 = "FCSubscription.m";
    v21 = 1024;
    v22 = 303;
    v23 = 2114;
    v24 = v15;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = objc_alloc(objc_opt_class());
  v6 = [(FCSubscription *)self subscriptionID];
  v7 = [(FCSubscription *)self tagID];
  v8 = [(FCSubscription *)self groupID];
  v9 = [(FCSubscription *)self dateAdded];
  v10 = [(FCSubscription *)self subscriptionType];
  v11 = [(FCSubscription *)self subscriptionOrigin];
  LOBYTE(v16) = [(FCSubscription *)self notificationsEnabled];
  v12 = [v5 initWithSubscriptionID:v6 tagID:v7 groupID:v8 dateAdded:v9 subscriptionType:v10 order:v4 origin:v11 notificationsEnabled:v16 zone:{-[FCSubscription zone](self, "zone")}];

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (id)subscriptionWithSubscriptionID:(id)a3 dictionaryRepresentation:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 objectForKeyedSubscript:@"subscriptionType"];
  v8 = [v7 unsignedIntegerValue];

  v9 = [v6 objectForKeyedSubscript:@"subscriptionOrder"];
  v10 = [v6 objectForKeyedSubscript:@"subscriptionOrigin"];
  v11 = [v10 unsignedIntegerValue];

  v12 = [v6 objectForKeyedSubscript:@"zone"];
  v13 = [v12 unsignedIntegerValue];

  v14 = [v6 objectForKeyedSubscript:@"dateAdded"];
  if (v8 == 2)
  {
    v17 = [v6 objectForKeyedSubscript:@"tagID"];
    v18 = [v6 objectForKeyedSubscript:@"groupID"];
    LOBYTE(v25) = 0;
    v19 = [FCSubscription subscriptionWithSubscriptionID:v5 tagID:v17 type:2 order:v9 origin:v11 groupID:v18 dateAdded:v14 notificationsEnabled:v25 zone:v13];

    goto LABEL_13;
  }

  if (!v8)
  {
    v15 = [v6 objectForKeyedSubscript:@"notificationsEnabled"];
    v16 = [v15 BOOLValue];

    v17 = [v6 objectForKeyedSubscript:@"tagID"];
    LOBYTE(v25) = v16;
    [FCSubscription subscriptionWithSubscriptionID:v5 tagID:v17 type:0 order:v9 origin:v11 groupID:0 dateAdded:v14 notificationsEnabled:v25 zone:v13];
    v19 = LABEL_7:;
    goto LABEL_13;
  }

  if ((v8 - 3) <= 2)
  {
    v17 = [v6 objectForKeyedSubscript:@"tagID"];
    LOBYTE(v25) = 0;
    [FCSubscription subscriptionWithSubscriptionID:v5 tagID:v17 type:v8 order:v9 origin:v11 groupID:0 dateAdded:v14 notificationsEnabled:v25 zone:v13];
    goto LABEL_7;
  }

  v17 = [v6 objectForKeyedSubscript:@"pollingURL"];
  v20 = [v6 objectForKeyedSubscript:@"url"];
  if ([v17 length] && objc_msgSend(v20, "length"))
  {
    v21 = [MEMORY[0x1E695DFF8] URLWithString:v17];
    v22 = [MEMORY[0x1E695DFF8] URLWithString:v20];
    v23 = [v6 objectForKeyedSubscript:@"title"];
    v19 = [FCSubscription pendingSubscriptionWithSubscriptionID:v5 url:v22 title:v23 pollingURL:v21 dateAdded:v14];
  }

  else
  {
    v19 = 0;
  }

LABEL_13:

  return v19;
}

- (id)dictionaryRepresentation
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(FCSubscription *)self isTypeTag]|| [(FCSubscription *)self isTypeMutedTag]|| [(FCSubscription *)self isTypeAutoFavoriteTag]|| [(FCSubscription *)self isTypeGroupableTag]|| [(FCSubscription *)self isTypeIgnoredTag])
  {
    v4 = [(FCSubscription *)self tagID];

    if (v4)
    {
      v5 = [(FCSubscription *)self tagID];
      [v3 setObject:v5 forKey:@"tagID"];

      v6 = [(FCSubscription *)self order];
      [v3 fc_safelySetObjectAllowingNil:v6 forKey:@"subscriptionOrder"];

      v7 = [(FCSubscription *)self dateAdded];
      [v3 setObject:v7 forKey:@"dateAdded"];

      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{FCCKSubscriptionOriginFromFCSubscriptionOrigin(-[FCSubscription subscriptionOrigin](self, "subscriptionOrigin"))}];
      [v3 setObject:v8 forKey:@"subscriptionOrigin"];

      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[FCSubscription subscriptionType](self, "subscriptionType")}];
      [v3 setObject:v9 forKey:@"subscriptionType"];

      v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[FCSubscription notificationsEnabled](self, "notificationsEnabled")}];
      [v3 setObject:v10 forKey:@"notificationsEnabled"];

      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[FCSubscription zone](self, "zone")}];
      [v3 setObject:v11 forKey:@"zone"];

      v12 = [(FCSubscription *)self groupID];

      if (v12)
      {
        v13 = [(FCSubscription *)self groupID];
        [v3 setObject:v13 forKey:@"groupID"];
LABEL_9:
      }
    }
  }

  else if ([(FCSubscription *)self isTypePending])
  {
    v17 = [(FCSubscription *)self url];

    if (v17)
    {
      v18 = [(FCSubscription *)self url];
      v19 = [v18 absoluteString];
      [v3 setObject:v19 forKey:@"url"];

      v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[FCSubscription subscriptionType](self, "subscriptionType")}];
      [v3 setObject:v20 forKey:@"subscriptionType"];

      v21 = [(FCSubscription *)self dateAdded];
      [v3 setObject:v21 forKey:@"dateAdded"];

      v22 = [(FCSubscription *)self title];

      if (v22)
      {
        v23 = [(FCSubscription *)self title];
        [v3 setObject:v23 forKey:@"title"];
      }

      v24 = [(FCSubscription *)self pollingURL];

      if (v24)
      {
        v13 = [(FCSubscription *)self pollingURL];
        v25 = [v13 absoluteString];
        [v3 setObject:v25 forKey:@"pollingURL"];

        goto LABEL_9;
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Case not implemented"];
    v26 = 136315906;
    v27 = "[FCSubscription(SubscriptionList) dictionaryRepresentation]";
    v28 = 2080;
    v29 = "FCSubscriptionList.m";
    v30 = 1024;
    v31 = 1515;
    v32 = 2114;
    v33 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v26, 0x26u);
    goto LABEL_9;
  }

  v14 = [v3 copy];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

@end