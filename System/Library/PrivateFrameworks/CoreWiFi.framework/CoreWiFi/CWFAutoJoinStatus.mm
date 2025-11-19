@interface CWFAutoJoinStatus
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAutoJoinStatus:(id)a3;
- (CWFAutoJoinStatus)init;
- (CWFAutoJoinStatus)initWithCoder:(id)a3;
- (NSString)description;
- (double)duration;
- (id)JSONCompatibleKeyValueMap;
- (id)deepCopy;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CWFAutoJoinStatus

- (CWFAutoJoinStatus)init
{
  v6.receiver = self;
  v6.super_class = CWFAutoJoinStatus;
  v2 = [(CWFAutoJoinStatus *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    UUID = v2->_UUID;
    v2->_UUID = v3;
  }

  return v2;
}

- (double)duration
{
  v3 = [(CWFAutoJoinStatus *)self endedAt];
  if (v3)
  {
    v4 = [(CWFAutoJoinStatus *)self endedAt];
    [v4 timeIntervalSinceReferenceDate];
    v6 = v5;
    v7 = [(CWFAutoJoinStatus *)self startedAt];
    [v7 timeIntervalSinceReferenceDate];
    v8 = 0.0;
    if (v6 >= v9)
    {
      v10 = [(CWFAutoJoinStatus *)self endedAt];
      [v10 timeIntervalSinceReferenceDate];
      v12 = v11;
      v13 = [(CWFAutoJoinStatus *)self startedAt];
      [v13 timeIntervalSinceReferenceDate];
      v8 = v12 - v14;
    }
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (id)deepCopy
{
  v19 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v16];
  v3 = v16;
  if (v2)
  {
    v15 = v3;
    v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:&v15];
    v5 = v15;

    if (v4)
    {
      v6 = v4;
      v7 = v6;
    }

    else
    {
      v9 = CWFGetOSLog();
      if (v9)
      {
        v10 = CWFGetOSLog();
      }

      else
      {
        v10 = MEMORY[0x1E69E9C10];
        v12 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v17 = 138412290;
        v18 = v5;
        _os_log_send_and_compose_impl();
      }

      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    v8 = CWFGetOSLog();
    if (v8)
    {
      v6 = CWFGetOSLog();
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = v3;
      _os_log_send_and_compose_impl();
    }

    v7 = 0;
    v5 = v3;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = [(NSUUID *)self->_UUID UUIDString];
  v5 = [v4 substringToIndex:5];
  [v3 appendFormat:@"uuid=%@, ", v5];

  [v3 appendFormat:@"intf=%@, ", self->_interfaceName];
  v6 = sub_1E0BCC05C(self->_trigger);
  [v3 appendFormat:@"trigger=%@. ", v6];

  v7 = sub_1E0BEE280(self->_state);
  [v3 appendFormat:@"state=%@, ", v7];

  if (self->_result)
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  [v3 appendFormat:@"result=%s, ", v8];
  v9 = sub_1E0BCC248(self->_startedAt);
  [v3 appendFormat:@"start=%@, ", v9];

  v10 = sub_1E0BCC248(self->_endedAt);
  [(CWFAutoJoinStatus *)self duration];
  [v3 appendFormat:@"end=%@ (%lums), ", v10, (v11 * 1000.0)];

  [v3 appendFormat:@"joins=%@", self->_joinAttempts];

  return v3;
}

- (BOOL)isEqualToAutoJoinStatus:(id)a3
{
  v5 = a3;
  UUID = self->_UUID;
  v7 = [v5 UUID];
  if (UUID != v7)
  {
    if (!self->_UUID || ([v5 UUID], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v11 = 0;
      goto LABEL_66;
    }

    v3 = v8;
    v9 = self->_UUID;
    v10 = [v5 UUID];
    if (![(NSUUID *)v9 isEqual:v10])
    {
      v11 = 0;
LABEL_65:

      goto LABEL_66;
    }

    v58 = v10;
  }

  startedAt = self->_startedAt;
  v13 = [v5 startedAt];
  if (startedAt != v13)
  {
    if (!self->_startedAt)
    {
      v11 = 0;
      goto LABEL_64;
    }

    v14 = [v5 startedAt];
    if (!v14)
    {
      goto LABEL_40;
    }

    v15 = v14;
    v16 = self->_startedAt;
    v17 = [v5 startedAt];
    v18 = v16;
    v19 = v17;
    if (([(NSDate *)v18 isEqual:v17]& 1) == 0)
    {

      goto LABEL_40;
    }

    v54 = v19;
    v56 = v15;
  }

  endedAt = self->_endedAt;
  v21 = [v5 endedAt];
  v22 = v21;
  if (endedAt == v21)
  {
    v57 = v21;
    v27 = v3;
LABEL_20:
    interfaceName = self->_interfaceName;
    v29 = [v5 interfaceName];
    v52 = interfaceName;
    v53 = v22;
    v55 = v29;
    if (interfaceName == v29)
    {
      v3 = v27;
      v35 = endedAt;
    }

    else
    {
      if (!self->_interfaceName)
      {
        v11 = 0;
        v3 = v27;
        v35 = endedAt;
        goto LABEL_59;
      }

      v30 = [v5 interfaceName];
      v3 = v27;
      if (!v30)
      {
        v42 = 0;
        v35 = endedAt;
LABEL_58:

        v11 = v42;
        goto LABEL_60;
      }

      v50 = v30;
      v31 = self->_interfaceName;
      v32 = [v5 interfaceName];
      v33 = v31;
      v34 = v32;
      v35 = endedAt;
      if (([(NSString *)v33 isEqual:v32]& 1) == 0)
      {

        v11 = 0;
LABEL_44:
        v22 = v57;
        if (v35 == v57)
        {

          v46 = v56;
          if (startedAt == v13)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        }

LABEL_46:
        v46 = v56;

        if (startedAt == v13)
        {
LABEL_48:

LABEL_49:
          v10 = v58;
          if (UUID == v7)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        }

LABEL_47:

        goto LABEL_48;
      }

      v49 = v34;
    }

    trigger = self->_trigger;
    if (trigger == [v5 trigger])
    {
      state = self->_state;
      if (state == [v5 state])
      {
        v38 = self->_result;
        if (v38 == [v5 result])
        {
          joinAttempts = self->_joinAttempts;
          v40 = [v5 joinAttempts];
          v41 = v40;
          v42 = joinAttempts == v40;
          if (v42 || !self->_joinAttempts)
          {

            v11 = v42;
            goto LABEL_56;
          }

          v43 = [v5 joinAttempts];
          if (v43)
          {
            v44 = self->_joinAttempts;
            v48 = v43;
            v45 = [v5 joinAttempts];
            v11 = [(NSArray *)v44 isEqual:v45];

            if (v52 != v55)
            {
            }

            goto LABEL_44;
          }
        }
      }
    }

    v42 = 0;
    v11 = 0;
LABEL_56:
    v29 = v55;
    if (v52 != v55)
    {

      goto LABEL_58;
    }

LABEL_59:

LABEL_60:
    v22 = v57;
    if (v35 != v57)
    {
    }

    goto LABEL_62;
  }

  if (self->_endedAt)
  {
    v23 = [v5 endedAt];
    if (!v23)
    {
      v11 = 0;
      goto LABEL_46;
    }

    v57 = v22;
    v51 = v23;
    v24 = self->_endedAt;
    v25 = [v5 endedAt];
    v26 = v24;
    v22 = v25;
    if (([(NSDate *)v26 isEqual:v25]& 1) != 0)
    {
      v27 = v3;
      goto LABEL_20;
    }

    if (startedAt != v13)
    {
    }

LABEL_40:

    v11 = 0;
    goto LABEL_49;
  }

  v11 = 0;
LABEL_62:

  if (startedAt != v13)
  {
  }

LABEL_64:
  v10 = v58;

  if (UUID != v7)
  {
    goto LABEL_65;
  }

LABEL_66:

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFAutoJoinStatus *)self isEqualToAutoJoinStatus:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_UUID hash];
  v4 = [(NSString *)self->_interfaceName hash]^ v3;
  v5 = [(NSDate *)self->_startedAt hash];
  v6 = v4 ^ v5 ^ [(NSDate *)self->_endedAt hash];
  joinAttempts = self->_joinAttempts;
  v8 = self->_trigger ^ self->_state ^ self->_result;
  return v6 ^ v8 ^ [(NSArray *)joinAttempts hash];
}

- (void)encodeWithCoder:(id)a3
{
  UUID = self->_UUID;
  v5 = a3;
  [v5 encodeObject:UUID forKey:@"_UUID"];
  [v5 encodeObject:self->_interfaceName forKey:@"_interfaceName"];
  [v5 encodeObject:self->_startedAt forKey:@"_startedAt"];
  [v5 encodeObject:self->_endedAt forKey:@"_endedAt"];
  [v5 encodeObject:self->_joinAttempts forKey:@"_joinAttempts"];
  [v5 encodeInteger:self->_trigger forKey:@"_trigger"];
  [v5 encodeInteger:self->_state forKey:@"_state"];
  [v5 encodeBool:self->_result forKey:@"_result"];
}

- (CWFAutoJoinStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = CWFAutoJoinStatus;
  v5 = [(CWFAutoJoinStatus *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_interfaceName"];
    interfaceName = v5->_interfaceName;
    v5->_interfaceName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_startedAt"];
    startedAt = v5->_startedAt;
    v5->_startedAt = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_endedAt"];
    endedAt = v5->_endedAt;
    v5->_endedAt = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"_joinAttempts"];
    joinAttempts = v5->_joinAttempts;
    v5->_joinAttempts = v17;

    v5->_trigger = [v4 decodeIntegerForKey:@"_trigger"];
    v5->_state = [v4 decodeIntegerForKey:@"_state"];
    v5->_result = [v4 decodeBoolForKey:@"_result"];
  }

  return v5;
}

- (id)JSONCompatibleKeyValueMap
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(CWFAutoJoinStatus *)self UUID];
  v5 = [v4 UUIDString];
  [v3 setObject:v5 forKeyedSubscript:@"uuid"];

  v6 = [(CWFAutoJoinStatus *)self interfaceName];
  [v3 setObject:v6 forKeyedSubscript:@"interface_name"];

  v7 = [(CWFAutoJoinStatus *)self startedAt];
  [v3 setObject:v7 forKeyedSubscript:@"started_at"];

  v8 = [(CWFAutoJoinStatus *)self endedAt];
  [v3 setObject:v8 forKeyedSubscript:@"ended_at"];

  v9 = MEMORY[0x1E696AD98];
  [(CWFAutoJoinStatus *)self duration];
  v11 = [v9 numberWithUnsignedInteger:(v10 * 1000.0)];
  [v3 setObject:v11 forKeyedSubscript:@"duration"];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFAutoJoinStatus result](self, "result")}];
  [v3 setObject:v12 forKeyedSubscript:@"result"];

  v13 = sub_1E0BEE280([(CWFAutoJoinStatus *)self state]);
  [v3 setObject:v13 forKeyedSubscript:@"state"];

  v14 = sub_1E0BCC05C([(CWFAutoJoinStatus *)self trigger]);
  [v3 setObject:v14 forKeyedSubscript:@"trigger"];

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v16 = [(CWFAutoJoinStatus *)self joinAttempts];
  v17 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v26 + 1) + 8 * i) JSONCompatibleKeyValueMap];
        [v15 addObject:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v18);
  }

  [v3 setObject:v15 forKeyedSubscript:@"join_attempts"];
  v22 = sub_1E0BCEC64(v3, 0, 1u);
  if (v22)
  {
    v23 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v22];
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

@end