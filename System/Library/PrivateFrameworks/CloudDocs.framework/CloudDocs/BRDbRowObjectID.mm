@interface BRDbRowObjectID
- (BRDbRowObjectID)initWithCoder:(id)a3;
- (BRDbRowObjectID)initWithRowID:(unint64_t)a3 type:(unsigned __int8)a4;
- (id)asString;
- (id)description;
- (id)documentID;
- (id)folderID;
- (void)documentID;
- (void)encodeWithCoder:(id)a3;
- (void)folderID;
@end

@implementation BRDbRowObjectID

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(BRDbRowObjectID *)self asString];
  v4 = [v2 stringWithFormat:@"<%@>", v3];

  return v4;
}

- (id)asString
{
  if ([(BRFileObjectID *)self isRootContainerItem])
  {
    v3 = MEMORY[0x1E6967250];
LABEL_5:
    v4 = *v3;
    goto LABEL_7;
  }

  if ([(BRFileObjectID *)self isCloudDocsRoot])
  {
    v3 = MEMORY[0x1E6967168];
    goto LABEL_5;
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%c%llx", +[BRFileObjectTypeConverter toChar:](BRFileObjectTypeConverter, "toChar:", self->_type), self->_rowId];
LABEL_7:

  return v4;
}

- (BRDbRowObjectID)initWithRowID:(unint64_t)a3 type:(unsigned __int8)a4
{
  v7.receiver = self;
  v7.super_class = BRDbRowObjectID;
  result = [(BRDbRowObjectID *)&v7 init];
  if (result)
  {
    result->_rowId = a3;
    result->_type = a4;
  }

  return result;
}

- (id)folderID
{
  v2 = brc_bread_crumbs("[BRDbRowObjectID folderID]", 91);
  v3 = brc_default_log(0, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [BRDbRowObjectID folderID];
  }

  return 0;
}

- (id)documentID
{
  v2 = brc_bread_crumbs("[BRDbRowObjectID documentID]", 97);
  v3 = brc_default_log(0, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [BRDbRowObjectID documentID];
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  rowId = self->_rowId;
  v5 = a3;
  [v5 encodeInt64:rowId forKey:@"r"];
  [v5 encodeInt64:self->_type forKey:@"t"];
}

- (BRDbRowObjectID)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = BRDbRowObjectID;
  v5 = [(BRDbRowObjectID *)&v7 init];
  if (v5)
  {
    v5->_rowId = [v4 decodeInt64ForKey:@"r"];
    v5->_type = [v4 decodeIntegerForKey:@"t"];
  }

  return v5;
}

- (void)folderID
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_1AE2A9000, v0, v1, "[CRIT] UNREACHABLE: asked the folderID of a BRDbRowObjectID item%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)documentID
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_1AE2A9000, v0, v1, "[CRIT] UNREACHABLE: asked the documentID of a BRDbRowObjectID item%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end