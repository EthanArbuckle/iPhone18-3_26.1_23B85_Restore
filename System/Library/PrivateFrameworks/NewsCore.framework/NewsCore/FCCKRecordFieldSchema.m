@interface FCCKRecordFieldSchema
+ (FCCKRecordFieldSchema)fieldWithName:(int)a3 type:(BOOL)a4 isEncrypted:;
- (BOOL)isEqual:(id)a3;
- (FCCKRecordFieldSchema)init;
- (id)sanitizeValue:(uint64_t)a1;
- (unint64_t)hash;
@end

@implementation FCCKRecordFieldSchema

+ (FCCKRecordFieldSchema)fieldWithName:(int)a3 type:(BOOL)a4 isEncrypted:
{
  v7 = a2;
  objc_opt_self();
  v8 = [FCCKRecordFieldSchema alloc];
  v9 = v7;
  if (v8)
  {
    v12.receiver = v8;
    v12.super_class = FCCKRecordFieldSchema;
    v10 = objc_msgSendSuper2(&v12, sel_init);
    v8 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_name, a2);
      v8->_type = a3;
      v8->_isEncrypted = a4;
    }
  }

  return v8;
}

- (FCCKRecordFieldSchema)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCCKRecordFieldSchema init]";
    v10 = 2080;
    v11 = "FCCKRecordSchema.m";
    v12 = 1024;
    v13 = 23;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCCKRecordFieldSchema init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (id)sanitizeValue:(uint64_t)a1
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (!a1)
  {
    v2 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_3:
    v2 = v4;
    goto LABEL_4;
  }

  v7 = *(a1 + 12);
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v24 = objc_alloc(MEMORY[0x1E696AEC0]);
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v27 = *(a1 + 16);
        v28 = [v24 initWithFormat:@"unexpected type %@ for field %@", v26, v27];
        *buf = 136315906;
        v45 = "[FCCKRecordFieldSchema sanitizeValue:]";
        v46 = 2080;
        v47 = "FCCKRecordSchema.m";
        v48 = 1024;
        v49 = 66;
        v50 = 2114;
        v51 = v28;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }

      objc_opt_class();
      if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v17 = v4;
        if (CFNumberIsFloatType(v17))
        {
          v18 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v17, "longLongValue")}];
LABEL_47:
          v2 = v18;

          goto LABEL_4;
        }

LABEL_46:
        v18 = v4;
        goto LABEL_47;
      }
    }

    else
    {
      if (v7 != 4)
      {
        if (v7 == 5)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v29 = objc_alloc(MEMORY[0x1E696AEC0]);
            v30 = objc_opt_class();
            v31 = NSStringFromClass(v30);
            v32 = *(a1 + 16);
            v33 = [v29 initWithFormat:@"unexpected type %@ for field %@", v31, v32];
            *buf = 136315906;
            v45 = "[FCCKRecordFieldSchema sanitizeValue:]";
            v46 = 2080;
            v47 = "FCCKRecordSchema.m";
            v48 = 1024;
            v49 = 86;
            v50 = 2114;
            v51 = v33;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
          }

          objc_opt_class();
          if (v4)
          {
            if (objc_opt_isKindOfClass())
            {
              v14 = v4;
            }

            else
            {
              v14 = 0;
            }
          }

          else
          {
            v14 = 0;
          }

          v22 = v14;
          v23 = [v22 firstObject];

          if (v23)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v39 = objc_alloc(MEMORY[0x1E696AEC0]);
              v40 = objc_opt_class();
              v41 = NSStringFromClass(v40);
              v42 = *(a1 + 16);
              v43 = [v39 initWithFormat:@"unexpected type within array %@ for field %@", v41, v42];
              *buf = 136315906;
              v45 = "[FCCKRecordFieldSchema sanitizeValue:]";
              v46 = 2080;
              v47 = "FCCKRecordSchema.m";
              v48 = 1024;
              v49 = 88;
              v50 = 2114;
              v51 = v43;
              _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
            }
          }

          v2 = v4;
        }

        goto LABEL_4;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v34 = objc_alloc(MEMORY[0x1E696AEC0]);
        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
        v37 = *(a1 + 16);
        v38 = [v34 initWithFormat:@"unexpected type %@ for field %@", v36, v37];
        *buf = 136315906;
        v45 = "[FCCKRecordFieldSchema sanitizeValue:]";
        v46 = 2080;
        v47 = "FCCKRecordSchema.m";
        v48 = 1024;
        v49 = 76;
        v50 = 2114;
        v51 = v38;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }

      objc_opt_class();
      if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v17 = v4;
        if (!CFNumberIsFloatType(v17))
        {
          v21 = MEMORY[0x1E696AD98];
          [v17 doubleValue];
          v18 = [v21 numberWithDouble:?];
          goto LABEL_47;
        }

        goto LABEL_46;
      }
    }

    v17 = 0;
    goto LABEL_46;
  }

  switch(v7)
  {
    case 0:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_3;
      }

      v15 = objc_alloc(MEMORY[0x1E696AEC0]);
      v16 = objc_opt_class();
      v10 = NSStringFromClass(v16);
      v11 = *(a1 + 16);
      v12 = [v15 initWithFormat:@"unexpected type %@ for field %@", v10, v11];
      *buf = 136315906;
      v45 = "[FCCKRecordFieldSchema sanitizeValue:]";
      v46 = 2080;
      v47 = "FCCKRecordSchema.m";
      v48 = 1024;
      v49 = 51;
      v50 = 2114;
      v51 = v12;
      v13 = MEMORY[0x1E69E9C10];
LABEL_37:
      _os_log_error_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      goto LABEL_3;
    case 1:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_3;
      }

      v19 = objc_alloc(MEMORY[0x1E696AEC0]);
      v20 = objc_opt_class();
      v10 = NSStringFromClass(v20);
      v11 = *(a1 + 16);
      v12 = [v19 initWithFormat:@"unexpected type %@ for field %@", v10, v11];
      *buf = 136315906;
      v45 = "[FCCKRecordFieldSchema sanitizeValue:]";
      v46 = 2080;
      v47 = "FCCKRecordSchema.m";
      v48 = 1024;
      v49 = 56;
      v50 = 2114;
      v51 = v12;
      v13 = MEMORY[0x1E69E9C10];
      goto LABEL_37;
    case 2:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_3;
      }

      v8 = objc_alloc(MEMORY[0x1E696AEC0]);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = *(a1 + 16);
      v12 = [v8 initWithFormat:@"unexpected type %@ for field %@", v10, v11];
      *buf = 136315906;
      v45 = "[FCCKRecordFieldSchema sanitizeValue:]";
      v46 = 2080;
      v47 = "FCCKRecordSchema.m";
      v48 = 1024;
      v49 = 61;
      v50 = 2114;
      v51 = v12;
      v13 = MEMORY[0x1E69E9C10];
      goto LABEL_37;
  }

LABEL_4:

  v5 = *MEMORY[0x1E69E9840];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (!v6)
  {
    LOBYTE(self) = 0;
    goto LABEL_17;
  }

  v7 = v6;
  v8 = v7;
  if (self)
  {
    name = self->_name;
  }

  else
  {
    name = 0;
  }

  v10 = v7[2];
  v11 = name;
  if (![(NSString *)v11 isEqualToString:v10])
  {
    goto LABEL_14;
  }

  if (!self)
  {
    isEncrypted = 0;
    if (v8[3])
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (self->_type != v8[3])
  {
LABEL_14:
    LOBYTE(self) = 0;
    goto LABEL_15;
  }

  isEncrypted = self->_isEncrypted;
LABEL_13:
  LOBYTE(self) = isEncrypted ^ *(v8 + 8) ^ 1;
LABEL_15:

LABEL_17:
  return self & 1;
}

- (unint64_t)hash
{
  v2 = self;
  if (self)
  {
    self = self->_name;
  }

  v3 = [(FCCKRecordFieldSchema *)self hash];
  if (v2)
  {
    type = v2->_type;
  }

  else
  {
    type = 0;
  }

  v5 = [MEMORY[0x1E696AD98] numberWithInt:type];
  v6 = [v5 hash];
  if (v2)
  {
    isEncrypted = v2->_isEncrypted;
  }

  else
  {
    isEncrypted = 0;
  }

  v8 = v6 ^ v3;
  v9 = [MEMORY[0x1E696AD98] numberWithBool:isEncrypted];
  v10 = [v9 hash];

  return v8 ^ v10;
}

@end