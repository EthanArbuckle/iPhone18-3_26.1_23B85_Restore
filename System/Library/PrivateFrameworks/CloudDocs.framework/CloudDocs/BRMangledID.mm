@interface BRMangledID
+ (BOOL)validateContainerID:(id)d;
+ (BOOL)validateMangledIDString:(id)string strict:(BOOL)strict;
+ (BOOL)validateOwnerName:(id)name;
+ (id)_containerIDFromSharedContainerID:(id)d validate:(BOOL)validate;
+ (id)_ownerNameFromSharedMangledIDString:(id)string validate:(BOOL)validate;
+ (id)_privateMangledContainerID:(id)d validate:(BOOL)validate;
+ (id)_privateUnmangledContainerID:(id)d validate:(BOOL)validate;
+ (id)cloudDocsMangledID;
+ (id)containerMetadataMangledID;
+ (id)desktopMangledID;
+ (id)documentsMangledID;
+ (id)sharedDatabaseMangledID;
+ (id)sideCarMangledID;
+ (id)zoneHealthMangledID;
- (BOOL)isCorporateMangledID;
- (BOOL)isDesktopMangledID;
- (BOOL)isDocumentsMangledID;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPassbookMangledID;
- (BOOL)isReservedMangedID;
- (BOOL)isShared;
- (BRMangledID)initWithAliasTargetContainerString:(id)string;
- (BRMangledID)initWithAppLibraryName:(id)name;
- (BRMangledID)initWithCoder:(id)coder;
- (BRMangledID)initWithMangledString:(id)string;
- (BRMangledID)initWithRecordZoneID:(id)d;
- (BRMangledID)initWithZoneName:(id)name ownerName:(id)ownerName;
- (NSString)appLibraryOrZoneName;
- (id)description;
@end

@implementation BRMangledID

- (NSString)appLibraryOrZoneName
{
  isShared = [(BRMangledID *)self isShared];
  mangledIDString = self->_mangledIDString;
  if (isShared)
  {
    [BRMangledID _containerIDFromSharedMangledIDString:mangledIDString validate:0];
  }

  else
  {
    [BRMangledID _privateUnmangledContainerID:mangledIDString validate:0];
  }
  v5 = ;

  return v5;
}

- (BOOL)isShared
{
  if ([(NSString *)self->_mangledIDString containsString:@":"])
  {
    return 1;
  }

  mangledIDString = self->_mangledIDString;

  return [(NSString *)mangledIDString isEqualToString:@"com~apple~SharedDocs"];
}

- (id)description
{
  aliasTargetContainerString = [(BRMangledID *)self aliasTargetContainerString];
  v3 = [aliasTargetContainerString description];

  return v3;
}

- (BRMangledID)initWithRecordZoneID:(id)d
{
  dCopy = d;
  zoneName = [dCopy zoneName];
  ownerName = [dCopy ownerName];

  v7 = [(BRMangledID *)self initWithZoneName:zoneName ownerName:ownerName];
  return v7;
}

- (BRMangledID)initWithZoneName:(id)name ownerName:(id)ownerName
{
  nameCopy = name;
  ownerNameCopy = ownerName;
  v12.receiver = self;
  v12.super_class = BRMangledID;
  v8 = [(BRMangledID *)&v12 init];
  if (v8)
  {
    v9 = [BRMangledID _mangledIDStringFromZoneName:nameCopy ownerName:ownerNameCopy validate:1];
    mangledIDString = v8->_mangledIDString;
    v8->_mangledIDString = v9;

    if (!v8->_mangledIDString)
    {

      v8 = 0;
    }
  }

  return v8;
}

- (BRMangledID)initWithAppLibraryName:(id)name
{
  v16 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (![BRMangledID validateContainerID:nameCopy])
  {
    v7 = brc_bread_crumbs("[BRMangledID initWithAppLibraryName:]", 44);
    v8 = brc_default_log(1, 0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v13 = nameCopy;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_1AE2A9000, v8, OS_LOG_TYPE_DEFAULT, "[WARNING] invalid library name %@%@", buf, 0x16u);
    }

    v5 = 0;
    goto LABEL_7;
  }

  v11.receiver = self;
  v11.super_class = BRMangledID;
  v5 = [(BRMangledID *)&v11 init];
  if (v5)
  {
    v6 = [BRMangledID _privateMangledContainerID:nameCopy validate:1];
    self = *(v5 + 1);
    *(v5 + 1) = v6;
LABEL_7:
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BRMangledID)initWithMangledString:(id)string
{
  stringCopy = string;
  if (![BRMangledID validateMangledIDString:stringCopy])
  {
    v7 = brc_bread_crumbs("[BRMangledID initWithMangledString:]", 57);
    v8 = brc_default_log(0, 0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [BRMangledID initWithMangledString:stringCopy];
    }

    v5 = 0;
    goto LABEL_7;
  }

  v10.receiver = self;
  v10.super_class = BRMangledID;
  v5 = [(BRMangledID *)&v10 init];
  if (v5)
  {
    v6 = stringCopy;
    self = *(v5 + 1);
    *(v5 + 1) = v6;
LABEL_7:
  }

  return v5;
}

- (BRMangledID)initWithAliasTargetContainerString:(id)string
{
  stringCopy = string;
  if ([stringCopy containsString:@"/"])
  {
    [BRMangledID initWithAliasTargetContainerString:];
  }

  v5 = [stringCopy rangeOfString:@":"];
  v7 = v6;
  v8 = stringCopy;
  v9 = v8;
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
    v11 = v8;
  }

  else
  {
    v11 = [v8 substringToIndex:v5];

    v10 = [v9 substringFromIndex:v5 + v7];
  }

  v12 = [(BRMangledID *)self initWithZoneName:v11 ownerName:v10];

  return v12;
}

+ (id)cloudDocsMangledID
{
  v2 = [[BRMangledID alloc] initWithAppLibraryName:@"com.apple.CloudDocs"];

  return v2;
}

- (BRMangledID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = BRMangledID;
  v5 = [(BRMangledID *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mangledIDString"];
    mangledIDString = v5->_mangledIDString;
    v5->_mangledIDString = v6;

    if (![BRMangledID validateMangledIDString:v5->_mangledIDString])
    {
      v8 = brc_bread_crumbs("[BRMangledID initWithCoder:]", 94);
      v9 = brc_default_log(0, 0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [BRMangledID initWithCoder:?];
      }

      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BRMangledID *)self isEqualToMangledID:equalCopy];

  return v5;
}

- (BOOL)isPassbookMangledID
{
  mangledIDString = self->_mangledIDString;
  v3 = [BRMangledID _privateMangledContainerID:@"com.apple.shoebox" validate:1];
  LOBYTE(mangledIDString) = [(NSString *)mangledIDString isEqualToString:v3];

  return mangledIDString;
}

- (BOOL)isCorporateMangledID
{
  mangledIDString = self->_mangledIDString;
  v3 = [BRMangledID _privateMangledContainerID:@"com.apple.icloud.applecorporate" validate:1];
  LOBYTE(mangledIDString) = [(NSString *)mangledIDString isEqualToString:v3];

  return mangledIDString;
}

- (BOOL)isReservedMangedID
{
  v3 = +[BRMangledID sideCarMangledID];
  if ([(BRMangledID *)self isEqualToMangledID:v3])
  {
    v4 = 1;
  }

  else
  {
    v5 = +[BRMangledID zoneHealthMangledID];
    if ([(BRMangledID *)self isEqualToMangledID:v5])
    {
      v4 = 1;
    }

    else
    {
      v6 = +[BRMangledID containerMetadataMangledID];
      v4 = [(BRMangledID *)self isEqualToMangledID:v6];
    }
  }

  return v4;
}

- (BOOL)isDesktopMangledID
{
  mangledIDString = self->_mangledIDString;
  v3 = [BRMangledID _privateMangledContainerID:@"com.apple.Desktop" validate:1];
  LOBYTE(mangledIDString) = [(NSString *)mangledIDString isEqualToString:v3];

  return mangledIDString;
}

- (BOOL)isDocumentsMangledID
{
  mangledIDString = self->_mangledIDString;
  v3 = [BRMangledID _privateMangledContainerID:@"com.apple.Documents" validate:1];
  LOBYTE(mangledIDString) = [(NSString *)mangledIDString isEqualToString:v3];

  return mangledIDString;
}

+ (id)desktopMangledID
{
  v2 = [[BRMangledID alloc] initWithAppLibraryName:@"com.apple.Desktop"];

  return v2;
}

+ (id)documentsMangledID
{
  v2 = [[BRMangledID alloc] initWithAppLibraryName:@"com.apple.Documents"];

  return v2;
}

+ (id)sideCarMangledID
{
  v2 = [[BRMangledID alloc] initWithAppLibraryName:@"com.apple.CloudDocs.pp-metadata"];

  return v2;
}

+ (id)zoneHealthMangledID
{
  v2 = [[BRMangledID alloc] initWithAppLibraryName:@"com.apple.CloudDocs.health"];

  return v2;
}

+ (id)containerMetadataMangledID
{
  v2 = [[BRMangledID alloc] initWithAppLibraryName:@"com.apple.CloudDocs.container-metadata"];

  return v2;
}

+ (id)sharedDatabaseMangledID
{
  v2 = [[BRMangledID alloc] initWithAppLibraryName:@"com.apple.SharedDocs"];

  return v2;
}

+ (BOOL)validateContainerID:(id)d
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (![dCopy length])
  {
    v4 = brc_bread_crumbs("+[BRMangledID validateContainerID:]", 256);
    v5 = brc_default_log(1, 0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "empty";
      if (!dCopy)
      {
        v9 = "nil";
      }

      v16 = 136315394;
      v17 = v9;
      v18 = 2112;
      *v19 = v4;
      v6 = "[WARNING] invalid container name (%s)%@";
      v7 = v5;
      v8 = 22;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if ([dCopy length] >= 0x97)
  {
    v4 = brc_bread_crumbs("+[BRMangledID validateContainerID:]", 260);
    v5 = brc_default_log(1, 0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412802;
      v17 = dCopy;
      v18 = 1024;
      *v19 = 150;
      *&v19[4] = 2112;
      *&v19[6] = v4;
      v6 = "[WARNING] invalid container name '%@', max length is %u%@";
      v7 = v5;
      v8 = 28;
LABEL_17:
      _os_log_impl(&dword_1AE2A9000, v7, OS_LOG_TYPE_DEFAULT, v6, &v16, v8);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (!dCopy)
  {
    v4 = brc_bread_crumbs("+[BRMangledID validateContainerID:]", 265);
    v5 = brc_default_log(1, 0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v4;
      v6 = "[WARNING] nil containerID%@";
      v7 = v5;
      v8 = 12;
      goto LABEL_17;
    }

LABEL_18:

    v12 = 0;
    goto LABEL_19;
  }

  if (validateContainerID__onceToken != -1)
  {
    +[BRMangledID validateContainerID:];
  }

  v10 = [dCopy length];
  if ([validateContainerID____regex rangeOfFirstMatchInString:dCopy options:0 range:{0, v10}] || v11 != v10)
  {
    v4 = brc_bread_crumbs("+[BRMangledID validateContainerID:]", 278);
    v5 = brc_default_log(1, 0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      pattern = [validateContainerID____regex pattern];
      v16 = 138412802;
      v17 = dCopy;
      v18 = 2112;
      *v19 = pattern;
      *&v19[8] = 2112;
      *&v19[10] = v4;
      _os_log_impl(&dword_1AE2A9000, v5, OS_LOG_TYPE_DEFAULT, "[WARNING] invalid container name '%@', expected regex %@%@", &v16, 0x20u);
    }

    goto LABEL_18;
  }

  v12 = 1;
LABEL_19:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t __35__BRMangledID_validateContainerID___block_invoke()
{
  validateContainerID____regex = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"[a-zA-Z0-9\\-]+\\.[a-zA-Z0-9\\-\\.]+" options:0 error:0];

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)validateOwnerName:(id)name
{
  nameCopy = name;
  v4 = nameCopy;
  if (validateOwnerName__onceToken != -1)
  {
    +[BRMangledID validateOwnerName:];
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_9:
    v8 = brc_bread_crumbs("+[BRMangledID validateOwnerName:]", 293);
    v9 = brc_default_log(0, 0);
    if (os_log_type_enabled(v9, 0x90u))
    {
      [(BRMangledID *)v8 validateOwnerName:v9];
    }

    goto LABEL_11;
  }

  if (!nameCopy)
  {
    goto LABEL_9;
  }

LABEL_3:
  v5 = [v4 length];
  if ([validateOwnerName____regex rangeOfFirstMatchInString:v4 options:0 range:{0, v5}] || v6 != v5)
  {
    v8 = brc_bread_crumbs("+[BRMangledID validateOwnerName:]", 300);
    v9 = brc_default_log(0, 0);
    if (os_log_type_enabled(v9, 0x90u))
    {
      [(BRMangledID *)v4 validateOwnerName:v8, v9];
    }

LABEL_11:

    v7 = 0;
    goto LABEL_12;
  }

  v7 = 1;
LABEL_12:

  return v7;
}

uint64_t __33__BRMangledID_validateOwnerName___block_invoke()
{
  validateOwnerName____regex = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"_[0-9a-f]{32}" options:0 error:0];

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)validateMangledIDString:(id)string strict:(BOOL)strict
{
  strictCopy = strict;
  stringCopy = string;
  v6 = stringCopy;
  if (strictCopy && ![stringCopy containsString:@"~"])
  {
    v7 = 0;
    v10 = 0;
  }

  else
  {
    if ([v6 containsString:@":"])
    {
      v7 = [BRMangledID _containerIDFromSharedMangledIDString:v6 validate:0];
      v8 = [BRMangledID _ownerNameFromSharedMangledIDString:v6 validate:0];
      v9 = [BRMangledID validateOwnerName:v8];

      v10 = 0;
      if (!v9)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = [BRMangledID _privateUnmangledContainerID:v6 validate:0];
    }

    v10 = [BRMangledID validateContainerID:v7];
  }

LABEL_9:

  return v10;
}

uint64_t __63__BRMangledID__mangledIDStringFromZoneName_ownerName_validate___block_invoke()
{
  v0 = getCKCurrentUserDefaultName();
  if (v0)
  {
    objc_storeStrong(&_mangledIDStringFromZoneName_ownerName_validate___defaultOwnerName, v0);
  }

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_privateMangledContainerID:(id)d validate:(BOOL)validate
{
  validateCopy = validate;
  dCopy = d;
  v6 = dCopy;
  if (validateCopy && [dCopy containsString:@"~"])
  {
    +[BRMangledID _privateMangledContainerID:validate:];
  }

  v7 = [v6 stringByReplacingOccurrencesOfString:@"." withString:@"~"];

  return v7;
}

+ (id)_privateUnmangledContainerID:(id)d validate:(BOOL)validate
{
  validateCopy = validate;
  dCopy = d;
  v6 = dCopy;
  if (validateCopy && [dCopy containsString:@"."])
  {
    +[BRMangledID _privateUnmangledContainerID:validate:];
  }

  v7 = [v6 stringByReplacingOccurrencesOfString:@"~" withString:@"."];

  return v7;
}

+ (id)_ownerNameFromSharedMangledIDString:(id)string validate:(BOOL)validate
{
  validateCopy = validate;
  stringCopy = string;
  v6 = [stringCopy rangeOfString:@":"];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (validateCopy)
    {
      +[BRMangledID _ownerNameFromSharedMangledIDString:validate:];
    }

    v8 = 0;
  }

  else
  {
    v8 = [stringCopy substringFromIndex:v6 + v7];
  }

  return v8;
}

+ (id)_containerIDFromSharedContainerID:(id)d validate:(BOOL)validate
{
  validateCopy = validate;
  dCopy = d;
  v6 = [dCopy rangeOfString:@":"];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (validateCopy)
    {
      +[BRMangledID _containerIDFromSharedContainerID:validate:];
    }

    v7 = 0;
  }

  else
  {
    v7 = [dCopy substringToIndex:v6];
  }

  return v7;
}

- (void)initWithMangledString:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = a1;
  OUTLINED_FUNCTION_4_1();
  *v5 = v1;
  OUTLINED_FUNCTION_5_1(&dword_1AE2A9000, v1, v2, "[CRIT] UNREACHABLE: invalid mangled string %@%@", v4, DWORD2(v4), *&v5[2], v6);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)initWithAliasTargetContainerString:.cold.1()
{
  v13 = *MEMORY[0x1E69E9840];
  brc_bread_crumbs("[BRMangledID initWithAliasTargetContainerString:]", 70);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_6_0();
  v4 = brc_default_log(v2, v3);
  if (OUTLINED_FUNCTION_5_0(v4))
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v6, v7, "[CRIT] Assertion failed: ![aliasTargetString containsString:@/]%@", v8, v9, v10, v11, v12);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:(void *)a1 .cold.1(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = *a1;
  OUTLINED_FUNCTION_4_1();
  *v5 = v1;
  OUTLINED_FUNCTION_5_1(&dword_1AE2A9000, v1, v2, "[CRIT] UNREACHABLE: encoded object has bogus mangledID %@%@", v4, DWORD2(v4), *&v5[2], v6);
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)validateOwnerName:(NSObject *)a3 .cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = [validateOwnerName____regex pattern];
  v10 = 138412802;
  v11 = a1;
  OUTLINED_FUNCTION_4_1();
  v12 = v7;
  v13 = v8;
  v14 = a2;
  _os_log_error_impl(&dword_1AE2A9000, a3, 0x90u, "[ERROR] invalid owner name '%@', expected regex %@%@", &v10, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)validateOwnerName:(uint64_t)a1 .cold.3(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [validateOwnerName____regex pattern];
  v6 = 138412546;
  v7 = v4;
  OUTLINED_FUNCTION_4_1();
  v8 = a1;
  _os_log_error_impl(&dword_1AE2A9000, a2, 0x90u, "[ERROR] invalid owner name nil, expected regex %@%@", &v6, 0x16u);

  v5 = *MEMORY[0x1E69E9840];
}

+ (void)_privateMangledContainerID:validate:.cold.1()
{
  v13 = *MEMORY[0x1E69E9840];
  brc_bread_crumbs("+[BRMangledID _privateMangledContainerID:validate:]", 356);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_6_0();
  v4 = brc_default_log(v2, v3);
  if (OUTLINED_FUNCTION_5_0(v4))
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v6, v7, "[CRIT] Assertion failed: !validate || ![containerID containsString:@~]%@", v8, v9, v10, v11, v12);
  }

  v5 = *MEMORY[0x1E69E9840];
}

+ (void)_privateUnmangledContainerID:validate:.cold.1()
{
  v13 = *MEMORY[0x1E69E9840];
  brc_bread_crumbs("+[BRMangledID _privateUnmangledContainerID:validate:]", 362);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_6_0();
  v4 = brc_default_log(v2, v3);
  if (OUTLINED_FUNCTION_5_0(v4))
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v6, v7, "[CRIT] Assertion failed: !validate || ![mangledContainerID containsString:@.]%@", v8, v9, v10, v11, v12);
  }

  v5 = *MEMORY[0x1E69E9840];
}

+ (void)_sharedMangledIDStringWithContainerID:ownerName:validate:.cold.1()
{
  v13 = *MEMORY[0x1E69E9840];
  brc_bread_crumbs("+[BRMangledID _sharedMangledIDStringWithContainerID:ownerName:validate:]", 369);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_6_0();
  v4 = brc_default_log(v2, v3);
  if (OUTLINED_FUNCTION_5_0(v4))
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v6, v7, "[CRIT] Assertion failed: ownerName && mangledContainerID%@", v8, v9, v10, v11, v12);
  }

  v5 = *MEMORY[0x1E69E9840];
}

+ (void)_ownerNameFromSharedMangledIDString:validate:.cold.1()
{
  v13 = *MEMORY[0x1E69E9840];
  brc_bread_crumbs("+[BRMangledID _ownerNameFromSharedMangledIDString:validate:]", 383);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_6_0();
  v4 = brc_default_log(v2, v3);
  if (OUTLINED_FUNCTION_5_0(v4))
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v6, v7, "[CRIT] Assertion failed: !validate%@", v8, v9, v10, v11, v12);
  }

  v5 = *MEMORY[0x1E69E9840];
}

+ (void)_containerIDFromSharedContainerID:validate:.cold.1()
{
  v13 = *MEMORY[0x1E69E9840];
  brc_bread_crumbs("+[BRMangledID _containerIDFromSharedContainerID:validate:]", 395);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_6_0();
  v4 = brc_default_log(v2, v3);
  if (OUTLINED_FUNCTION_5_0(v4))
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v6, v7, "[CRIT] Assertion failed: !validate%@", v8, v9, v10, v11, v12);
  }

  v5 = *MEMORY[0x1E69E9840];
}

@end