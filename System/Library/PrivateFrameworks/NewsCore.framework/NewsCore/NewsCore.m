id NewsCoreUserDefaults()
{
  if (qword_1EDB27640 != -1)
  {
    dispatch_once(&qword_1EDB27640, &__block_literal_global_114);
  }

  v1 = _MergedGlobals_180;

  return v1;
}

uint64_t __NewsCoreUserDefaults_block_invoke()
{
  _MergedGlobals_180 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.newscore"];

  return MEMORY[0x1EEE66BB8]();
}

id Assembly.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR___FCAssembly_assemblies;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B2E0, &qword_1B6815178);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B6813190;
  v5 = type metadata accessor for DropboxAssembly();
  v6 = sub_1B63F2AF0();
  *(v4 + 56) = v5;
  *(v4 + 64) = sub_1B63F2B00(&qword_1EDB20218, type metadata accessor for DropboxAssembly);
  *(v4 + 32) = v6;
  v7 = type metadata accessor for PrivateDataAssembly();
  v8 = sub_1B63F2AF0();
  *(v4 + 96) = v7;
  *(v4 + 104) = sub_1B63F2B00(qword_1EDB200B8, type metadata accessor for PrivateDataAssembly);
  *(v4 + 72) = v8;
  v9 = type metadata accessor for ServiceAssembly();
  v10 = sub_1B63F2AF0();
  *(v4 + 136) = v9;
  *(v4 + 144) = sub_1B63F2B00(qword_1EDB20168, type metadata accessor for ServiceAssembly);
  *(v4 + 112) = v10;
  *&v1[v3] = v4;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_1B63F2B00(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void FCAppleAccountDetermineContentStoreFrontID(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v24 = v11;
  v15 = v13;
  v16 = v15;
  if (!v15 || (v17 = v15, v18 = v24, v12) && (v17 = v15, v18 = v24, ([MEMORY[0x1E69E58C0] nf_object:v24 isEqualToObject:v12] & 1) == 0))
  {
    v17 = v14;

    v18 = v12;
  }

  v19 = v18;
  *a5 = v18;
  v20 = NewsCoreUserDefaults();
  v21 = [v20 objectForKey:@"storefront"];

  if (NFInternalBuild() && v21 && ([v21 isEqualToString:@"default-storefront"] & 1) == 0)
  {
    v22 = v21;

    v17 = v22;
  }

  v23 = v17;
  *a6 = v17;
}

uint64_t sub_1B63F38CC()
{
  v0 = sub_1B67D89EC();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x1EEE9AC00]();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B67D890C();
  sub_1B63F3DA0(0, &qword_1EDB1FC88, off_1E7C345E0);
  sub_1B67D899C();

  v5 = *MEMORY[0x1E69D6AD0];
  v6 = v1[13];
  v6(v4, v5, v0);
  sub_1B67D889C();

  v7 = v1[1];
  v7(v4, v0);
  sub_1B67D890C();
  type metadata accessor for DropboxBundleSubscriptionManager();
  sub_1B67D899C();

  v6(v4, v5, v0);
  sub_1B67D889C();

  v7(v4, v0);
  sub_1B67D890C();
  type metadata accessor for DropboxSubscriptionList();
  sub_1B67D899C();

  v6(v4, v5, v0);
  sub_1B67D889C();

  v7(v4, v0);
  sub_1B67D890C();
  type metadata accessor for DropboxReadingHistory();
  sub_1B67D899C();

  v6(v4, v5, v0);
  sub_1B67D889C();

  v7(v4, v0);
  sub_1B67D890C();
  type metadata accessor for DropboxSmarterFetchUserInterestVectorProvider();
  sub_1B67D899C();

  v6(v4, v5, v0);
  sub_1B67D889C();

  v7(v4, v0);
  sub_1B67D890C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB949AD0, &unk_1B680FEC0);
  sub_1B67D899C();

  v6(v4, v5, v0);
  sub_1B67D889C();

  v7(v4, v0);
  sub_1B67D890C();
  sub_1B63F3DA0(0, &unk_1EDB1FC78, off_1E7C345C8);
  sub_1B67D899C();

  v6(v4, v5, v0);
  sub_1B67D889C();

  return (v7)(v4, v0);
}

uint64_t sub_1B63F3DA0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1B63F3E34()
{
  v0 = sub_1B67D89EC();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x1EEE9AC00](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B67D890C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94BAB0, &qword_1B681A088);
  sub_1B67D899C();

  sub_1B67D890C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94BAB8, &qword_1B681A090);
  sub_1B67D89AC();

  v5 = *MEMORY[0x1E69D6AD0];
  v6 = v1[13];
  v6(v4, v5, v0);
  sub_1B67D889C();

  v7 = v1[1];
  v7(v4, v0);
  v12 = v7;
  sub_1B67D890C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94BAC0, &qword_1B681A098);
  sub_1B67D89AC();

  v6(v4, v5, v0);
  sub_1B67D889C();

  v7(v4, v0);
  sub_1B67D890C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94BAC8, &unk_1B681A0A0);
  sub_1B67D89AC();

  v6(v4, v5, v0);
  v10[1] = v1 + 13;
  sub_1B67D889C();

  v12(v4, v0);
  sub_1B67D890C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BAD0, &unk_1B681A0B0);
  sub_1B67D899C();

  v6(v4, v5, v0);
  sub_1B67D889C();

  v8 = v12;
  v12(v4, v0);
  sub_1B67D890C();
  sub_1B67D899C();

  v11 = v5;
  v6(v4, v5, v0);
  sub_1B67D889C();

  v8(v4, v0);
  sub_1B67D890C();
  type metadata accessor for PrivateDataContext();
  sub_1B67D899C();

  v6(v4, v5, v0);
  sub_1B67D889C();

  v8(v4, v0);
  sub_1B67D890C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0E0, &unk_1B681A0C0);
  sub_1B67D899C();

  sub_1B67D890C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB949AE0, qword_1B681A0D0);
  sub_1B67D899C();

  v6(v4, v11, v0);
  sub_1B67D889C();

  return (v8)(v4, v0);
}

uint64_t sub_1B63F4438()
{
  v0 = sub_1B67D89EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B67D890C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF98, "\u0383");
  sub_1B67D899C();

  sub_1B67D890C();
  sub_1B63F3DA0(0, &qword_1EDB1FC90, off_1E7C34430);
  sub_1B67D899C();

  sub_1B67D890C();
  sub_1B63F3DA0(0, qword_1EDB1FC98, off_1E7C34398);
  sub_1B67D899C();

  sub_1B67D890C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B000, &qword_1B6814EF0);
  sub_1B67D899C();

  sub_1B67D890C();
  sub_1B67D899C();

  sub_1B67D890C();
  sub_1B67D899C();

  sub_1B67D890C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B008, &qword_1B6814EF8);
  sub_1B67D89AC();

  sub_1B67D890C();
  sub_1B67D89AC();

  sub_1B67D890C();
  sub_1B67D89AC();

  sub_1B67D890C();
  sub_1B67D89AC();

  sub_1B67D890C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B010, &qword_1B6814F00);
  sub_1B67D89AC();

  sub_1B67D890C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B018, &unk_1B6814F08);
  sub_1B67D89AC();

  sub_1B67D890C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B020, &qword_1B6814F18);
  sub_1B67D899C();

  sub_1B67D890C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B028, &unk_1B6814F20);
  sub_1B67D89AC();

  (*(v1 + 104))(v4, *MEMORY[0x1E69D6AD0], v0);
  sub_1B67D889C();

  (*(v1 + 8))(v4, v0);
  sub_1B67D890C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B090, &qword_1B6814F30);
  sub_1B67D899C();

  sub_1B67D890C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B098, &qword_1B6814F38);
  sub_1B67D89AC();

  sub_1B67D890C();
  type metadata accessor for GlobalRecipeListProvider();
  sub_1B67D899C();

  sub_1B67D890C();
  type metadata accessor for RecentRecipeListProvider();
  sub_1B67D899C();

  sub_1B67D890C();
  type metadata accessor for TrendingRecipeListProvider();
  sub_1B67D899C();

  sub_1B67D890C();
  type metadata accessor for PersonalizedRecipeListProvider();
  sub_1B67D899C();

  sub_1B67D891C();
  sub_1B67D898C();
}

id FCURLForFeldsparUserAccountHomeDirectory()
{
  v0 = FCSystemDirectoryDirectoryPath();
  v1 = FCURLForSystemDirectoriesPath(v0);
  v2 = [v1 URLByAppendingPathComponent:@"News" isDirectory:1];

  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = 0;
  [v3 createDirectoryAtURL:v2 withIntermediateDirectories:1 attributes:0 error:&v5];

  return v2;
}

id FCReadDictionary(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "fileURL"];
    *buf = 136315906;
    v18 = "NSDictionary *FCReadDictionary(NSURL *__strong, NSSet<Class> *__strong)";
    v19 = 2080;
    v20 = "FCFileCoordinatedDictionaryUtilities.m";
    v21 = 1024;
    v22 = 17;
    v23 = 2114;
    v24 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v4)
    {
      goto LABEL_6;
    }
  }

  else if (v4)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "allowedClasses"];
    *buf = 136315906;
    v18 = "NSDictionary *FCReadDictionary(NSURL *__strong, NSSet<Class> *__strong)";
    v19 = 2080;
    v20 = "FCFileCoordinatedDictionaryUtilities.m";
    v21 = 1024;
    v22 = 18;
    v23 = 2114;
    v24 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v3];
  if (v5)
  {
    v16 = 0;
    v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v4 fromData:v5 error:&v16];
    v7 = v16;
    v8 = v7;
    if ((!v6 || v7) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = objc_alloc(MEMORY[0x1E696AEC0]);
      v14 = [v3 absoluteString];
      v15 = [v13 initWithFormat:@"Failed to unarchive dictionary from '%@' with error: %@", v14, v8];
      *buf = 136315906;
      v18 = "NSDictionary *FCReadDictionary(NSURL *__strong, NSSet<Class> *__strong)";
      v19 = 2080;
      v20 = "FCFileCoordinatedDictionaryUtilities.m";
      v21 = 1024;
      v22 = 28;
      v23 = 2114;
      v24 = v15;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }
  }

  else
  {
    v6 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

uint64_t FCReadWriteDictionaryWithAccessor(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (!v9 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "readingURL"];
    *buf = 136315906;
    v28 = "BOOL FCReadWriteDictionaryWithAccessor(NSURL *__strong, NSSet<Class> *__strong, NSURL *__strong, NSError *__strong, void (^__strong)(NSMutableDictionary *__strong))";
    v29 = 2080;
    v30 = "FCFileCoordinatedDictionaryUtilities.m";
    v31 = 1024;
    v32 = 47;
    v33 = 2114;
    v34 = v15;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v11)
    {
      goto LABEL_6;
    }
  }

  else if (v11)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "writingURL"];
    *buf = 136315906;
    v28 = "BOOL FCReadWriteDictionaryWithAccessor(NSURL *__strong, NSSet<Class> *__strong, NSURL *__strong, NSError *__strong, void (^__strong)(NSMutableDictionary *__strong))";
    v29 = 2080;
    v30 = "FCFileCoordinatedDictionaryUtilities.m";
    v31 = 1024;
    v32 = 48;
    v33 = 2114;
    v34 = v16;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!v13 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "accessor"];
    *buf = 136315906;
    v28 = "BOOL FCReadWriteDictionaryWithAccessor(NSURL *__strong, NSSet<Class> *__strong, NSURL *__strong, NSError *__strong, void (^__strong)(NSMutableDictionary *__strong))";
    v29 = 2080;
    v30 = "FCFileCoordinatedDictionaryUtilities.m";
    v31 = 1024;
    v32 = 49;
    v33 = 2114;
    v34 = v17;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v12)
    {
      goto LABEL_9;
    }
  }

  else if (v12)
  {
LABEL_9:
    v13[2](v13, 0);
    v14 = 0;
    goto LABEL_19;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = FCReadDictionary(v9, v10);
  v20 = v19;
  v21 = MEMORY[0x1E695E0F8];
  if (v19)
  {
    v21 = v19;
  }

  v22 = v21;

  v23 = [v22 mutableCopy];
  (v13)[2](v13, v23);
  v24 = [v22 isEqualToDictionary:v23];

  if (v24)
  {
    v14 = 1;
  }

  else
  {
    v14 = FCWriteDictionary(v23, v11);
  }

  objc_autoreleasePoolPop(v18);
LABEL_19:

  v25 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t FCCheckedDynamicCast(objc_class *a1, uint64_t a2)
{
  v2 = a2;
  v17 = *MEMORY[0x1E69E9840];
  if (a2 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = objc_alloc(MEMORY[0x1E696AEC0]);
      v7 = NSStringFromClass(a1);
      v8 = objc_opt_class();
      *buf = 136315906;
      v10 = "id FCCheckedDynamicCast(Class, id<NSObject>)";
      v11 = 2080;
      v12 = "FCCast.m";
      v13 = 1024;
      v14 = 98;
      v15 = 2114;
      v16 = [v6 initWithFormat:@"Unexpected object type in checked dynamic cast - Expected %@, Got %@", v7, NSStringFromClass(v8)];
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v2 = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

id FCURLForAccountActionQueue()
{
  v0 = FCURLForFeldsparUserAccountHomeDirectory();
  v1 = [v0 URLByAppendingPathComponent:@"actionQueue" isDirectory:0];

  return v1;
}

id FCURLForContainerizedUserAccountHomeDirectory(char a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((a1 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"this function is only supported for containerized processes"];
    v5 = 136315906;
    v6 = "NSURL *FCURLForContainerizedUserAccountHomeDirectory(BOOL)";
    v7 = 2080;
    v8 = "FCFileURLs.m";
    v9 = 1024;
    v10 = 54;
    v11 = 2114;
    v12 = v4;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v5, 0x26u);
  }

  v1 = FCURLForDirectoryInDomain(NSLibraryDirectory, 1uLL);
  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

id FCURLForContainerizedUserAccountCachesDirectory(char a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((a1 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"this function is only supported for containerized processes"];
    v5 = 136315906;
    v6 = "NSURL *FCURLForContainerizedUserAccountCachesDirectory(BOOL)";
    v7 = 2080;
    v8 = "FCFileURLs.m";
    v9 = 1024;
    v10 = 61;
    v11 = 2114;
    v12 = v4;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v5, 0x26u);
  }

  if (qword_1EDB271E0 != -1)
  {
    dispatch_once(&qword_1EDB271E0, &__block_literal_global_54);
  }

  v1 = _MergedGlobals_154;
  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

void __FCURLForContainerizedUserAccountCachesDirectory_block_invoke()
{
  v0 = FCURLForDirectoryInDomain(NSCachesDirectory, 1uLL);
  v1 = _MergedGlobals_154;
  _MergedGlobals_154 = v0;

  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = 0;
  [v2 createDirectoryAtURL:_MergedGlobals_154 withIntermediateDirectories:1 attributes:0 error:&v3];
}

uint64_t sub_1B63F5CB4()
{
  result = sub_1B67D896C();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1B67D89BC();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void *FCSystemDirectoryDirectoryPath()
{
  v0 = malloc_type_malloc(0x400uLL, 0x34654665uLL);
  if (v0)
  {
    started = sysdir_start_search_path_enumeration_private();
    MEMORY[0x1B8C96F70](started, v0);
  }

  return v0;
}

id FCURLForSystemDirectoriesPath(id a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithCString:a1 encoding:4];
    free(v1);
    v1 = [MEMORY[0x1E695DFF8] fileURLWithPath:v2 isDirectory:1];
  }

  return v1;
}

id FCURLForDirectoryInDomain(NSSearchPathDirectory a1, NSSearchPathDomainMask a2)
{
  v2 = NSSearchPathForDirectoriesInDomains(a1, a2, 1);
  v3 = [v2 fc_onlyObject];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3 isDirectory:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void FCPerformBlockOnMainThread(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "block"];
    *buf = 136315906;
    v5 = "void FCPerformBlockOnMainThread(dispatch_block_t  _Nonnull __strong)";
    v6 = 2080;
    v7 = "FCBlockUtilities.m";
    v8 = 1024;
    v9 = 23;
    v10 = 2114;
    v11 = v3;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v1[2](v1);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v1);
  }

  v2 = *MEMORY[0x1E69E9840];
}

id FCSupportedStoreFrontIDs()
{
  if (qword_1EDB27660 != -1)
  {
    dispatch_once(&qword_1EDB27660, &__block_literal_global_560);
  }

  v1 = qword_1EDB27658;

  return v1;
}

void __FCSupportedStoreFrontIDs_block_invoke()
{
  v5[4] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = @"143441";
  v5[1] = @"143444";
  v5[2] = @"143460";
  v5[3] = @"143455";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v2 = [v0 setWithArray:v1];
  v3 = qword_1EDB27658;
  qword_1EDB27658 = v2;

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t FCIntegerRepresentationOfBundleShortVersionString(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@"."];
  v2 = [v1 count];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 objectAtIndexedSubscript:0];
    v5 = 1000000 * [v4 integerValue];

    if (v3 != 1)
    {
      v6 = [v1 objectAtIndexedSubscript:1];
      v5 += 1000 * [v6 integerValue];

      if (v3 >= 3)
      {
        v7 = [v1 objectAtIndexedSubscript:2];
        v5 += [v7 integerValue];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t FCDynamicCast(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (objc_opt_isKindOfClass())
  {
    return a2;
  }

  return 0;
}

uint64_t FCCurrentContextEnvironment()
{
  if (!NFInternalBuild())
  {
    return 0;
  }

  v0 = NewsCoreUserDefaults();
  v1 = [v0 stringForKey:@"content_environment"];
  if ([v1 isEqualToString:@"staging"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"devel"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"qa"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"test"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"icloud1"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"sandbox"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"demo1"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"demo2"])
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id NewsCoreSensitiveUserDefaults()
{
  if (qword_1EDB27650 != -1)
  {
    dispatch_once(&qword_1EDB27650, &__block_literal_global_6_2);
  }

  v1 = qword_1EDB27648;

  return v1;
}

uint64_t __NewsCoreSensitiveUserDefaults_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.newscore2"];
  v1 = qword_1EDB27648;
  qword_1EDB27648 = v0;

  v2 = *MEMORY[0x1E695E8B8];
  v3 = *MEMORY[0x1E695E898];

  return MEMORY[0x1EEDB8450](@"com.apple.newscore2", v2, v3, 0, 1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<NTPBKeyValuePair_ValueType,objc_class  {objcproto21FCKeyValueStoreCoding}* {__strong}>,void *>,std::__hash_node_destructor<std::allocator<void *>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t __FCSetupLogging_block_invoke()
{
  v0 = os_log_create(FCLogSubsystemIdentifier, "Default");
  v1 = FCDefaultLog;
  FCDefaultLog = v0;

  v2 = os_log_create(FCLogSubsystemIdentifier, "AlternateUniversalLinks");
  v3 = FCAlternateUniversalLinksLog;
  FCAlternateUniversalLinksLog = v2;

  v4 = os_log_create(FCLogSubsystemIdentifier, "Analytics");
  v5 = FCAnalyticsLog;
  FCAnalyticsLog = v4;

  v6 = os_log_create(FCLogSubsystemIdentifier, "AppConfiguration");
  v7 = FCAppConfigurationLog;
  FCAppConfigurationLog = v6;

  v8 = os_log_create(FCLogSubsystemIdentifier, "Audio");
  v9 = FCAudioLog;
  FCAudioLog = v8;

  v10 = os_log_create(FCLogSubsystemIdentifier, "AutoFavorites");
  v11 = FCAutoFavoritesLog;
  FCAutoFavoritesLog = v10;

  v12 = os_log_create(FCLogSubsystemIdentifier, "AutoFavoritesService");
  v13 = FCAutoFavoritesServiceLog;
  FCAutoFavoritesServiceLog = v12;

  v14 = os_log_create(FCLogSubsystemIdentifier, "AVAsset");
  v15 = FCAVAssetLog;
  FCAVAssetLog = v14;

  v16 = os_log_create(FCLogSubsystemIdentifier, "Biome");
  v17 = FCBiomeLog;
  FCBiomeLog = v16;

  v18 = os_log_create(FCLogSubsystemIdentifier, "ChannelMembership");
  v19 = FCChannelMembershipLog;
  FCChannelMembershipLog = v18;

  v20 = os_log_create(FCLogSubsystemIdentifier, "ChannelPicker");
  v21 = FCChannelPickerLog;
  FCChannelPickerLog = v20;

  v22 = os_log_create(FCLogSubsystemIdentifier, "CloudKit");
  v23 = FCCloudKitLog;
  FCCloudKitLog = v22;

  v24 = os_log_create(FCLogSubsystemIdentifier, "CommandQueue");
  v25 = FCCommandQueueLog;
  FCCommandQueueLog = v24;

  v26 = os_log_create(FCLogSubsystemIdentifier, "CurrentIssuesChecker");
  v27 = FCCurrentIssuesCheckerLog;
  FCCurrentIssuesCheckerLog = v26;

  v28 = os_log_create(FCLogSubsystemIdentifier, "DES");
  v29 = FCDESLog;
  FCDESLog = v28;

  v30 = os_log_create(FCLogSubsystemIdentifier, "Diagnostics");
  v31 = FCDiagnosticsLog;
  FCDiagnosticsLog = v30;

  v32 = os_log_create(FCLogSubsystemIdentifier, "ESLInventory");
  v33 = FCESLInventoryLog;
  FCESLInventoryLog = v32;

  v34 = os_log_create(FCLogSubsystemIdentifier, "FeedItemInventory");
  v35 = FCFeedItemInventoryLog;
  FCFeedItemInventoryLog = v34;

  v36 = os_log_create(FCLogSubsystemIdentifier, "FeedDatabase");
  v37 = FCFeedDatabaseLog;
  FCFeedDatabaseLog = v36;

  v38 = os_log_create(FCLogSubsystemIdentifier, "FeedTransform");
  v39 = FCFeedItemTransformationLog;
  FCFeedItemTransformationLog = v38;

  v40 = os_log_create(FCLogSubsystemIdentifier, "FeedPrewarm");
  v41 = FCFeedPrewarmLog;
  FCFeedPrewarmLog = v40;

  v42 = os_log_create(FCLogSubsystemIdentifier, "FeedViewport");
  v43 = FCFeedViewportLog;
  FCFeedViewportLog = v42;

  v44 = os_log_create(FCLogSubsystemIdentifier, "LocalAreas");
  v45 = FCLocalAreasLog;
  FCLocalAreasLog = v44;

  v46 = os_log_create(FCLogSubsystemIdentifier, "Network");
  v47 = FCNetworkLog;
  FCNetworkLog = v46;

  v48 = os_log_create(FCLogSubsystemIdentifier, "Newsletter");
  v49 = FCNewsletterLog;
  FCNewsletterLog = v48;

  v50 = os_log_create(FCLogSubsystemIdentifier, "Notifications");
  v51 = FCNotificationsLog;
  FCNotificationsLog = v50;

  v52 = os_log_create(FCLogSubsystemIdentifier, "OfflineDownloads");
  v53 = FCOfflineDownloadsLog;
  FCOfflineDownloadsLog = v52;

  v54 = os_log_create(FCLogSubsystemIdentifier, "OpenInNews");
  v55 = FCOpenInNewsLog;
  FCOpenInNewsLog = v54;

  v56 = os_log_create(FCLogSubsystemIdentifier, "Operations");
  v57 = FCOperationLog;
  FCOperationLog = v56;

  v58 = os_log_create(FCLogSubsystemIdentifier, "Paywall");
  v59 = FCPaywallLog;
  FCPaywallLog = v58;

  v60 = os_log_create(FCLogSubsystemIdentifier, "Personalization");
  v61 = FCPersonalizationLog;
  FCPersonalizationLog = v60;

  v62 = os_log_create(FCLogSubsystemIdentifier, "PPT");
  v63 = FCPPTLog;
  FCPPTLog = v62;

  v64 = os_log_create(FCLogSubsystemIdentifier, "PrivateDataEncryptionCrash");
  v65 = FCPrivateDataEncryptionCrashLog;
  FCPrivateDataEncryptionCrashLog = v64;

  v66 = os_log_create(FCLogSubsystemIdentifier, "PrivateDataEncryption");
  v67 = FCPrivateDataEncryptionLog;
  FCPrivateDataEncryptionLog = v66;

  v68 = os_log_create(FCLogSubsystemIdentifier, "PrivateData");
  v69 = FCPrivateDataLog;
  FCPrivateDataLog = v68;

  v70 = os_log_create(FCLogSubsystemIdentifier, "ProgressivePersonalization");
  v71 = FCProgressivePersonalizationLog;
  FCProgressivePersonalizationLog = v70;

  v72 = os_log_create(FCLogSubsystemIdentifier, "Purchase");
  v73 = FCPurchaseLog;
  FCPurchaseLog = v72;

  v74 = os_log_create(FCLogSubsystemIdentifier, "PushNotifications");
  v75 = FCPushNotificationsLog;
  FCPushNotificationsLog = v74;

  v76 = os_log_create(FCLogSubsystemIdentifier, "Puzzle");
  v77 = FCPuzzleLog;
  FCPuzzleLog = v76;

  v78 = os_log_create(FCLogSubsystemIdentifier, "Reachability");
  v79 = FCReachabilityLog;
  FCReachabilityLog = v78;

  v80 = os_log_create(FCLogSubsystemIdentifier, "ReadonlyPersonalizationAggregateStore");
  v81 = FCReadonlyPersonalizationAggregateStoreLog;
  FCReadonlyPersonalizationAggregateStoreLog = v80;

  v82 = os_log_create(FCLogSubsystemIdentifier, "RecordSource");
  v83 = FCRecordSourceLog;
  FCRecordSourceLog = v82;

  v84 = os_log_create(FCLogSubsystemIdentifier, "FavoriteList");
  v85 = FCShortcutListLog;
  FCShortcutListLog = v84;

  v86 = os_log_create(FCLogSubsystemIdentifier, "ShortcutCategoryList");
  v87 = FCShortcutCategoryListLog;
  FCShortcutCategoryListLog = v86;

  v88 = os_log_create(FCLogSubsystemIdentifier, "StatelessPersonalization");
  v89 = FCStatelessPersonalizationLog;
  FCStatelessPersonalizationLog = v88;

  v90 = os_log_create(FCLogSubsystemIdentifier, "SubscriptionList");
  v91 = FCSubscriptionListLog;
  FCSubscriptionListLog = v90;

  v92 = os_log_create(FCLogSubsystemIdentifier, "TabiConfiguration");
  v93 = FCTabiConfigurationLog;
  FCTabiConfigurationLog = v92;

  v94 = os_log_create(FCLogSubsystemIdentifier, "TagRecommendation");
  v95 = FCTagRecommendationLog;
  FCTagRecommendationLog = v94;

  v96 = os_log_create(FCLogSubsystemIdentifier, "TopStories");
  v97 = FCTopStoriesLog;
  FCTopStoriesLog = v96;

  v98 = os_log_create(FCLogSubsystemIdentifier, "Translation");
  v99 = FCTranslationLog;
  FCTranslationLog = v98;

  v100 = os_log_create(FCLogSubsystemIdentifier, "UserEvents");
  v101 = FCUserEventsLog;
  FCUserEventsLog = v100;

  v102 = os_log_create(FCLogSubsystemIdentifier, "UserEventsStorage");
  v103 = FCUserEventsStorageLog;
  FCUserEventsStorageLog = v102;

  v104 = os_log_create(FCLogSubsystemIdentifier, "UserInfo");
  v105 = FCUserInfoLog;
  FCUserInfoLog = v104;

  v106 = os_log_create(FCLogSubsystemIdentifier, "VanityURL");
  v107 = FCVanityURLLog;
  FCVanityURLLog = v106;

  FCWebURLResolutionLog = os_log_create(FCLogSubsystemIdentifier, "WebURLResolution");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t FCDefaultsReadEndpointEnvironment()
{
  if (!NFInternalBuild())
  {
    return 1;
  }

  v0 = NewsCoreUserDefaults();
  v1 = [v0 stringForKey:@"content_environment"];

  if ([v1 isEqualToString:@"staging"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"qa"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"test"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"icloud1"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"devel"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"sandbox"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"demo1"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"demo2"])
  {
    v2 = 9;
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

__CFString *FCDefaultFairPlayBaseURLStringForEnvironment(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7C47320[a1 - 1];
  }
}

id FCArticleRecordSourceDesiredKeysFromDesiredFieldOptions(int a1, void *a2, void *a3)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = objc_opt_new();
  HasExtendedColorDisplay = NFDeviceHasExtendedColorDisplay();
  if ((a1 & 2) != 0)
  {
    [v7 addObject:@"thumbnailWidgetLQ"];
    if (HasExtendedColorDisplay)
    {
      [v7 addObject:@"thumbnailWidgetLQ2"];
    }

    [v7 addObject:@"thumbnailWidgetLQMetadata"];
    if ((a1 & 4) == 0)
    {
LABEL_3:
      if ((a1 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_3;
  }

  [v7 addObject:@"thumbnailWidget"];
  if (HasExtendedColorDisplay)
  {
    [v7 addObject:@"thumbnailWidget2"];
  }

  [v7 addObject:@"thumbnailWidgetMetadata"];
  if ((a1 & 8) == 0)
  {
LABEL_4:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_42;
  }

LABEL_39:
  [v7 addObject:@"thumbnailWidgetHQ"];
  if (HasExtendedColorDisplay)
  {
    [v7 addObject:@"thumbnailWidgetHQ2"];
  }

  [v7 addObject:@"thumbnailWidgetHQMetadata"];
  if ((a1 & 0x10) == 0)
  {
LABEL_5:
    if ((a1 & 0x200000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_43;
  }

LABEL_42:
  [v7 addObject:@"title"];
  if ((a1 & 0x200000) == 0)
  {
LABEL_6:
    if ((a1 & 0x40000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

LABEL_43:
  [v7 addObject:@"titlesExperimental"];
  if ((a1 & 0x40000) == 0)
  {
LABEL_7:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_45;
  }

LABEL_44:
  [v7 addObject:@"titleCompact"];
  if ((a1 & 0x20) == 0)
  {
LABEL_8:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_45:
  [v7 addObject:@"storyType"];
  if ((a1 & 0x40) == 0)
  {
LABEL_9:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_49;
  }

LABEL_46:
  [v7 addObject:@"thumbnailLQ"];
  if (HasExtendedColorDisplay)
  {
    [v7 addObject:@"thumbnailLQ2"];
  }

  [v7 addObject:@"thumbnailLQMetadata"];
  if ((a1 & 0x80) == 0)
  {
LABEL_10:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_52;
  }

LABEL_49:
  [v7 addObject:@"thumbnail"];
  if (HasExtendedColorDisplay)
  {
    [v7 addObject:@"thumbnail2"];
  }

  [v7 addObject:@"thumbnailMetadata"];
  if ((a1 & 0x100) == 0)
  {
LABEL_11:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_55;
  }

LABEL_52:
  [v7 addObject:@"thumbnailMedium"];
  if (HasExtendedColorDisplay)
  {
    [v7 addObject:@"thumbnailMedium2"];
  }

  [v7 addObject:@"thumbnailMediumMetadata"];
  if ((a1 & 0x200) == 0)
  {
LABEL_12:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_58;
  }

LABEL_55:
  [v7 addObject:@"thumbnailHQ"];
  if (HasExtendedColorDisplay)
  {
    [v7 addObject:@"thumbnailHQ2"];
  }

  [v7 addObject:@"thumbnailHQMetadata"];
  if ((a1 & 0x400) == 0)
  {
LABEL_13:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_61;
  }

LABEL_58:
  [v7 addObject:@"thumbnailUltraHQ"];
  if (HasExtendedColorDisplay)
  {
    [v7 addObject:@"thumbnailUltraHQ2"];
  }

  [v7 addObject:@"thumbnailUltraHQMetadata"];
  if ((a1 & 0x800) == 0)
  {
LABEL_14:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_62;
  }

LABEL_61:
  [v7 addObject:@"shortExcerpt"];
  if ((a1 & 0x1000) == 0)
  {
LABEL_15:
    if ((a1 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_63;
  }

LABEL_62:
  [v7 addObject:@"videoURL"];
  [v7 addObject:@"videoStillImage"];
  [v7 addObject:@"videoDuration"];
  [v7 addObject:@"videoType"];
  [v7 addObject:@"sportsEventIDs"];
  if ((a1 & 0x2000) == 0)
  {
LABEL_16:
    if ((a1 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_64;
  }

LABEL_63:
  [v7 addObject:@"isSponsored"];
  if ((a1 & 0x4000) == 0)
  {
LABEL_17:
    if ((a1 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_65;
  }

LABEL_64:
  [v7 addObject:@"isDraft"];
  if ((a1 & 0x8000) == 0)
  {
LABEL_18:
    if ((a1 & 0x10000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_66;
  }

LABEL_65:
  [v7 addObject:@"iAdCategories"];
  if ((a1 & 0x10000) == 0)
  {
LABEL_19:
    if ((a1 & 0x20000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_66:
  [v7 addObject:@"iAdKeywords"];
  if ((a1 & 0x20000) != 0)
  {
LABEL_20:
    [v7 addObject:@"iAdSectionTagIDs"];
  }

LABEL_21:
  if ((a1 & 0x80000) != 0)
  {
    v18[0] = @"videoCallToActionTitle";
    v18[1] = @"videoCallToActionURL";
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    [v7 addObjectsFromArray:v12];

    if ((a1 & 0x100000) == 0)
    {
LABEL_23:
      if ((a1 & 0x4000000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_70;
    }
  }

  else if ((a1 & 0x100000) == 0)
  {
    goto LABEL_23;
  }

  [v7 addObject:@"clusterIDStocks"];
  if ((a1 & 0x4000000) == 0)
  {
LABEL_24:
    if ((a1 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_71;
  }

LABEL_70:
  [v7 addObject:@"accessoryText"];
  if ((a1 & 1) == 0)
  {
LABEL_25:
    if ((a1 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_72;
  }

LABEL_71:
  v17[0] = @"referencedArticleID";
  v17[1] = @"coverArt";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  [v7 addObjectsFromArray:v13];

  if ((a1 & 0x1000000) == 0)
  {
LABEL_26:
    if ((a1 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_73;
  }

LABEL_72:
  [v7 addObject:@"layeredCover"];
  [v7 addObject:@"layeredCoverAspectRatio"];
  if ((a1 & 0x2000000) == 0)
  {
LABEL_27:
    if ((a1 & 0x10000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_74;
  }

LABEL_73:
  v16[0] = @"narrativeTrackMetadata";
  v16[1] = @"narrativeTrackFullURL";
  v16[2] = @"narrativeTrackSampleURL";
  v16[3] = @"narrativeTrackTextRanges";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:4];
  [v7 addObjectsFromArray:v14];

  if ((a1 & 0x10000000) == 0)
  {
LABEL_28:
    if ((a1 & 0x20000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_74:
  [v7 addObject:@"float16TitleEncoding"];
  if ((a1 & 0x20000000) != 0)
  {
LABEL_29:
    [v7 addObject:@"float16FullBodyEncoding"];
  }

LABEL_30:
  v15[0] = @"thumbnailFocalFrame";
  v15[1] = @"thumbnailPerceptualHash";
  v15[2] = @"publishDate";
  v15[3] = @"isPaid";
  v15[4] = @"isBundlePaid";
  v15[5] = @"isFeature";
  v15[6] = @"sourceChannelTagID";
  v15[7] = @"publisherArticleVersion";
  v15[8] = @"backendArticleVersion";
  v15[9] = @"contentType";
  v15[10] = @"contentURL";
  v15[11] = @"clusterID";
  v15[12] = @"blockedStorefrontIDs";
  v15[13] = @"allowedStorefrontIDs";
  v15[14] = @"primaryAudience";
  v15[15] = @"behaviorFlags";
  v15[16] = @"minNewsVersion";
  v15[17] = @"topicTagIDs";
  v15[18] = @"scoresTopicTagIDs";
  v15[19] = @"relatedArticleIDs2";
  v15[20] = @"moreFromPublisherArticleIDs";
  v15[21] = @"articleID";
  v15[22] = @"articleETag";
  v15[23] = @"articleModDate";
  v15[24] = @"flintDocument";
  v15[25] = @"flintFontResourceIDs";
  v15[26] = @"publisherSpecifiedArticleIDs";
  v15[27] = @"parentIssueID";
  v15[28] = @"language";
  v15[29] = @"role";
  v15[30] = @"halfLifeMillis";
  v15[31] = @"halfLifeMillisOverride";
  v15[32] = @"linkedArticleIDs";
  v15[33] = @"linkedIssueIDs";
  v15[34] = @"isIssueOnly";
  v15[35] = @"bodyTextLength";
  v15[36] = @"thumbnailPrimaryColor";
  v15[37] = @"thumbnailBackgroundColor";
  v15[38] = @"thumbnailTextColor";
  v15[39] = @"thumbnailAccentColor";
  v15[40] = @"authors";
  v15[41] = @"expirationData";
  v15[42] = @"routeURL";
  v15[43] = @"schemaFlags";
  v15[44] = @"recipeIDs";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:45];
  [v7 addObjectsFromArray:v9];

  [v7 fc_safelyAddObject:v6];
  [v7 fc_safelyAddObject:v5];

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

id __FCArticleRecordSourceLocalizableKeysFromDesiredFieldOptions_block_invoke()
{
  if (qword_1EDB26A38 != -1)
  {
    dispatch_once(&qword_1EDB26A38, &__block_literal_global_61_3);
  }

  v1 = _MergedGlobals_12;

  return v1;
}

id FCArticleRecordSourceAlwaysLocalizedKeysFromDesiredFieldOptions(int a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  [v2 addObject:@"articleRecirculationConfigurationAsset"];
  [v2 addObject:@"engagementCohortsBaseline"];
  [v2 addObject:@"conversionCohortsBaseline"];
  if ((a1 & 0x100000) != 0)
  {
    v6[0] = @"stocksMetadata";
    v6[1] = @"stocksScores";
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
    [v2 addObjectsFromArray:v3];
  }

  v4 = *MEMORY[0x1E69E9840];

  return v2;
}

uint64_t __FCArticleRecordSourceLocalizableKeysFromDesiredFieldOptions_block_invoke_2()
{
  _MergedGlobals_12 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"tagMetadata", @"topicFlags", @"scores", 0}];

  return MEMORY[0x1EEE66BB8]();
}

unint64_t FCDesiredTagRecordFieldOptionsWithHeadlineFieldOptions(unint64_t a1)
{
  v1 = vdupq_n_s64(a1);
  v2 = vshlq_u64(v1, xmmword_1B681A850);
  v3 = vshlq_u64(v1, xmmword_1B681A860);
  v4 = v3.i8[0] & 2;
  v5 = vorrq_s8(vandq_s8(v2, xmmword_1B681A880), vandq_s8(v3, xmmword_1B681A870));
  v6 = vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL));
  if ((*&v6 & 0xFFFFFFFFFFFFFF7FLL) != 0)
  {
    return (a1 >> 18) & 0x200 | (a1 >> 24) & 0x400 | v4 & 0xFFFFFFFFFFFFFF9ELL | a1 & 1 | (32 * ((a1 >> 4) & 3)) | *&v6 | 0x11C;
  }

  else
  {
    return (a1 >> 18) & 0x200 | (a1 >> 24) & 0x400 | v4 & 0xFFFFFFFFFFFFFF9ELL | a1 & 1 | (32 * ((a1 >> 4) & 3)) | *&v6;
  }
}

id FCTagRecordSourceDesiredKeysFromDesiredFieldOptions(unint64_t a1)
{
  v12[28] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = v2;
  v4 = (a1 >> 2) & 1;
  if ((a1 & 4) != 0)
  {
    [v2 addObject:@"nameImage"];
    if ((a1 & 8) == 0)
    {
LABEL_3:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"nameImageForDarkBackground"];
  LODWORD(v4) = 1;
  if ((a1 & 0x10) == 0)
  {
LABEL_4:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v3 addObject:@"nameImageMask"];
  [v3 addObject:@"nameImageMetadata"];
  LODWORD(v4) = 1;
  if ((a1 & 0x20) == 0)
  {
LABEL_5:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v3 addObject:@"nameImageMaskWidgetSmall"];
  if ((a1 & 0x40) == 0)
  {
LABEL_6:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_20:
  [v3 addObject:@"nameImageMaskWidgetLarge"];
  if ((a1 & 0x80) != 0)
  {
LABEL_7:
    [v3 addObject:@"nameCompact"];
  }

LABEL_8:
  if ((a1 & 0x100) != 0)
  {
    [v3 addObject:@"nameImageCompact"];
    [v3 addObject:@"nameImageCompactMetadata"];
    if ((a1 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (a1)
  {
LABEL_23:
    v12[0] = @"hideAccessoryText";
    v12[1] = @"publisherPaidAuthorizationURL";
    v12[2] = @"publisherPaidVerificationURL";
    v12[3] = @"publisherPaidWebAccessURL";
    v12[4] = @"publisherPaidLeakyPaywallOptOut";
    v12[5] = @"publisherPaidFeldsparablePurchaseIDs";
    v12[6] = @"publisherPaidBundlePurchaseIDs";
    v12[7] = @"logoImage";
    v12[8] = @"sectionTagIDs";
    v12[9] = @"iAdCategories";
    v12[10] = @"iAdKeywords";
    v12[11] = @"coverImage";
    v12[12] = @"feedNavImage";
    v12[13] = @"feedNavImageHQ";
    v12[14] = @"sportsTheme";
    v12[15] = @"sportsLogoImage";
    v12[16] = @"sportsLogoImageCompact";
    v12[17] = @"sportsLogoImageLarge";
    v12[18] = @"nameImageLarge";
    v12[19] = @"navigationChromeBackgroundImage";
    v12[20] = @"navigationChromeBackgroundDarkModeImage";
    v12[21] = @"navigationChromeBackgroundImageCompact";
    v12[22] = @"navigationChromeBackgroundDarkModeImageCompact";
    v12[23] = @"navigationChromeBackgroundImageLarge";
    v12[24] = @"navigationChromeBackgroundDarkModeImageLarge";
    v12[25] = @"sportsLogoAltImage";
    v12[26] = @"sportsLogoAltImageCompact";
    v12[27] = @"sportsLogoAltImageLarge";
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:28];
    [v3 addObjectsFromArray:v8];

    goto LABEL_24;
  }

  if (!v4)
  {
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_24:
  v11[0] = @"nameImageScaleFactor";
  v11[1] = @"nameImageBaselineShift";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  [v3 addObjectsFromArray:v9];

  if ((a1 & 0x400) != 0)
  {
LABEL_12:
    [v3 addObject:@"template"];
  }

LABEL_13:
  v10[0] = @"type";
  v10[1] = @"contentProvider";
  v10[2] = @"isPublic";
  v10[3] = @"isDeprecated";
  v10[4] = @"replacementID";
  v10[5] = @"parent";
  v10[6] = @"defaultSectionTagID";
  v10[7] = @"blockedStorefrontIDs";
  v10[8] = @"allowedStorefrontIDs";
  v10[9] = @"minNewsVersion";
  v10[10] = @"isNotificationEnabled";
  v10[11] = @"score";
  v10[12] = @"primaryAudience";
  v10[13] = @"behaviorFlags";
  v10[14] = @"propertyFlags";
  v10[15] = @"subtitle";
  v10[16] = @"latestIssueIDs";
  v10[17] = @"archiveIssueListID";
  v10[18] = @"language";
  v10[19] = @"magazineGenre";
  v10[20] = @"publisherSpecifiedArticleIDsModifiedDate";
  v10[21] = @"publisherSpecifiedArticles";
  v10[22] = @"superGroupKnobs";
  v10[23] = @"superGroupConfig";
  v10[24] = @"recentIssueIDs";
  v10[25] = @"highlightsArticleListID";
  v10[26] = @"subscriptionRate";
  v10[27] = @"adTargetingKeywords";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:28];
  [v3 addObjectsFromArray:v5];

  v6 = *MEMORY[0x1E69E9840];

  return v3;
}

__CFString *FCDefaultClientAPIBaseURLStringForEnvironment(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7C473B0[a1 - 1];
  }
}

id FCAppConfigurationDictionaryValueWithOverride(void *a1, void *a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a4;
  v10 = a3;
  v11 = NewsCoreUserDefaults();
  v12 = [v11 BOOLForKey:v10];

  if (!NFInternalBuild() || !v12)
  {
    goto LABEL_9;
  }

  v13 = NewsCoreUserDefaults();
  v14 = [v13 stringForKey:v9];

  if (![v14 length])
  {
LABEL_8:

LABEL_9:
    v16 = FCAppConfigurationDictionaryValueWithDefaultValue(v7, v8, 0);
    goto LABEL_10;
  }

  v15 = [v14 dataUsingEncoding:4];
  v22 = 0;
  v16 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v15 options:0 error:&v22];
  v17 = v22;
  if (v17)
  {
    v18 = v17;
    v19 = FCAppConfigurationLog;
    if (os_log_type_enabled(FCAppConfigurationLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v24 = v9;
      v25 = 2112;
      v26 = v18;
      _os_log_error_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_ERROR, "Failed to parse debug override value for %@ error: %@", buf, 0x16u);
    }

    goto LABEL_8;
  }

LABEL_10:
  v20 = *MEMORY[0x1E69E9840];

  return v16;
}

uint64_t FCEndpointEnvironmentForEnvironment(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"PRODUCTION"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"STAGING"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"QA"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"TEST"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"DEVEL"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"SANDBOX"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"DEMO1"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"DEMO2"])
  {
    v2 = 9;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void *FCAnalyticsEnvelopeContentTypeConfigsByContentType(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_new();
  v20 = 0;
  v6 = [MEMORY[0x1E695DF20] fc_dictionaryFromJSON:v4 error:&v20];

  v7 = v20;
  v8 = v7;
  if (v4 && !v7)
  {
    v19 = 0;
    v9 = [MEMORY[0x1E695DF20] fc_dictionaryFromJSON:v3 error:&v19];
    v10 = v19;
    v8 = v10;
    if (v3 && !v10)
    {
      v11 = [v9 objectForKeyedSubscript:@"config"];
      if (v11)
      {
        v12 = [v6 objectForKeyedSubscript:@"urls"];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __FCAnalyticsEnvelopeContentTypeConfigsByContentType_block_invoke;
        v16[3] = &unk_1E7C3EEC0;
        v17 = v12;
        v18 = v5;
        v13 = v12;
        [v11 enumerateObjectsUsingBlock:v16];
      }
    }
  }

  v14 = v5;

  return v5;
}

void __FCAnalyticsEnvelopeContentTypeConfigsByContentType_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = a2;
  v4 = objc_opt_new();
  v5 = [v31 objectForKeyedSubscript:@"url_key"];
  v30 = v5;
  if (v5 && (v6 = [v5 unsignedIntegerValue], v6 < objc_msgSend(*(a1 + 32), "count")))
  {
    v7 = [*(a1 + 32) objectAtIndexedSubscript:v6];
    [v4 setEndpointURLString:v7];

    [v4 setGroupingTag:v6];
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v31 objectForKeyedSubscript:@"seed_time"];
  v10 = v9;
  if (v9)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  v29 = v11;
  if (v9)
  {
    [v4 setSeedTime:{objc_msgSend(v9, "unsignedIntegerValue")}];
  }

  v12 = [v31 objectForKeyedSubscript:@"content_header_name"];
  v13 = [v31 objectForKeyedSubscript:@"content_header_value"];
  v14 = v12 == 0;
  v15 = v13 != 0;
  if (v14 != v15)
  {
    [v4 setContentHeaderName:v12];
    [v4 setContentHeaderValue:v13];
  }

  v16 = [v31 objectForKeyedSubscript:@"sampling_floor"];
  v17 = v16;
  v18 = &unk_1F2E70950;
  if (v16)
  {
    v18 = v16;
  }

  v19 = v18;

  v20 = [v19 unsignedIntegerValue];
  v21 = [v31 objectForKeyedSubscript:@"sampling_ceil"];
  v22 = v21;
  v23 = &unk_1F2E70968;
  if (v21)
  {
    v23 = v21;
  }

  v24 = v23;

  v25 = [v24 unsignedIntegerValue];
  if (v20 <= 0x64uLL && v25 <= 0x64uLL && v20 <= v25)
  {
    [v4 setSamplingFloor:v20];
    [v4 setSamplingCeiling:v25];
    if ((v29 & (v14 ^ v15)) != 0)
    {
      v26 = *(a1 + 40);
      v27 = [MEMORY[0x1E696AD98] numberWithInt:a3];
      [v26 setObject:v4 forKeyedSubscript:v27];
    }
  }
}

uint64_t __FCStoryStyleConfigurationsFromStoryStyleConfigDicts_block_invoke(uint64_t a1, void *a2)
{
  v2 = FCAppConfigurationStringValue(a2, @"type", 0);
  v3 = FCArticleStoryTypeForStoryTypeString(v2);

  v4 = MEMORY[0x1E696AD98];

  return [v4 numberWithInt:v3];
}

uint64_t FCArticleStoryTypeForStoryTypeString(void *a1)
{
  v1 = a1;
  if ([v1 caseInsensitiveCompare:@"top"] && objc_msgSend(v1, "caseInsensitiveCompare:", @"topStory"))
  {
    if ([v1 caseInsensitiveCompare:@"breaking"])
    {
      if ([v1 caseInsensitiveCompare:@"updated"])
      {
        if ([v1 caseInsensitiveCompare:@"developing"])
        {
          if ([v1 caseInsensitiveCompare:@"local"])
          {
            v2 = 0;
          }

          else
          {
            v2 = 5;
          }
        }

        else
        {
          v2 = 3;
        }
      }

      else
      {
        v2 = 4;
      }
    }

    else
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

FCTopStoriesStyleConfiguration *__FCStoryStyleConfigurationsFromStoryStyleConfigDicts_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FCTopStoriesStyleConfiguration alloc] initWithConfigDictionary:v2];

  return v3;
}

void FCDeconstructHexStringWithBlock(void *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "block"];
    *buf = 136315906;
    *&buf[4] = "void FCDeconstructHexStringWithBlock(NSString * _Nullable __strong, void (^__strong _Nonnull)(CGFloat, CGFloat, CGFloat, CGFloat))";
    v18 = 2080;
    v19 = "FCColor.m";
    v20 = 1024;
    v21 = 17;
    v22 = 2114;
    v23 = v16;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if ([v3 length] == 9)
  {
    v5 = [v3 substringFromIndex:1];

    v3 = v5;
  }

  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  if ([v3 length] == 8)
  {
    *buf = 0;
    v10 = [MEMORY[0x1E696AE88] scannerWithString:v3];
    [v10 scanHexLongLong:buf];
    v9 = buf[3] / 255.0;
    v8 = buf[2] / 255.0;
    v6 = buf[1] / 255.0;
    v7 = buf[0] / 255.0;
  }

  if ([v3 length] == 7)
  {
    v11 = [v3 substringFromIndex:1];

    v3 = v11;
  }

  if ([v3 length] == 6)
  {
    *buf = 0;
    v12 = [MEMORY[0x1E696AE88] scannerWithString:v3];
    [v12 scanHexLongLong:buf];
    v9 = buf[2] / 255.0;
    v8 = buf[1] / 255.0;
    v6 = buf[0] / 255.0;

    v7 = 1.0;
  }

  if ([v3 length] == 4)
  {
    v13 = [v3 substringFromIndex:1];

    v3 = v13;
  }

  if ([v3 length] == 3)
  {
    *buf = 0;
    v14 = [MEMORY[0x1E696AE88] scannerWithString:v3];
    [v14 scanHexLongLong:buf];
    v9 = ((*buf >> 8) & 0xFLL) / 15.0;
    v8 = (buf[0] >> 4) / 15.0;
    v6 = (buf[0] & 0xF) / 15.0;

    v7 = 1.0;
  }

  v4[2](v4, v9, v8, v6, v7);

  v15 = *MEMORY[0x1E69E9840];
}

id FCBundle()
{
  if (qword_1EDB26E68 != -1)
  {
    dispatch_once(&qword_1EDB26E68, &__block_literal_global_2);
  }

  v1 = _MergedGlobals_128;

  return v1;
}

uint64_t __FCBundle_block_invoke()
{
  _MergedGlobals_128 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t adStatusConditionTypeForType(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"BundleSubscription"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"sBundleSubscription"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id FCDefaultScheduledMicroUpdateTimes()
{
  if (qword_1EDB277D0 != -1)
  {
    dispatch_once(&qword_1EDB277D0, &__block_literal_global_140);
  }

  v1 = _MergedGlobals_190;

  return v1;
}

void __FCDefaultScheduledMicroUpdateTimes_block_invoke()
{
  v0 = +[FCAppleAccount sharedAccount];
  v1 = [v0 contentStoreFrontID];
  v2 = [v1 isEqualToString:@"143441"];

  v3 = MEMORY[0x1E695E0F8];
  v4 = _MergedGlobals_190;
  if (v2)
  {
    v3 = &unk_1F2E71AA0;
  }

  _MergedGlobals_190 = v3;
}

uint64_t FCChannelUpsellTriggerMethodForValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 caseInsensitiveCompare:@"TriggerMethodHardFollow"])
    {
      if ([v2 caseInsensitiveCompare:@"TriggerMethodChannelFeedEntry"])
      {
        if ([v2 caseInsensitiveCompare:@"TriggerMethodArticleOpenDaily"])
        {
          if ([v2 caseInsensitiveCompare:@"TriggerMethodArticleOpenWeekly"])
          {
            if ([v2 caseInsensitiveCompare:@"TriggerMethodArticleOpenMonthly"])
            {
              if ([v2 caseInsensitiveCompare:@"TriggerMethodReachEndOfArticle"])
              {
                v3 = 0;
              }

              else
              {
                v3 = 6;
              }
            }

            else
            {
              v3 = 5;
            }
          }

          else
          {
            v3 = 4;
          }
        }

        else
        {
          v3 = 3;
        }
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t FCEmailSignupStyleForValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 caseInsensitiveCompare:@"EmailSignupStyleLandingPage"])
    {
      v3 = 2 * ([v2 caseInsensitiveCompare:@"EmailSignupStyleAlert"] == 0);
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1B640221C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id FCAppConfigurationArrayValueWithDefaultValue(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    v7 = [a1 objectForKeyedSubscript:a2];
    if (!v7 || ([MEMORY[0x1E695DFB0] null], v8 = objc_claimAutoreleasedReturnValue(), v8, v9 = v7, v7 == v8))
    {
      v9 = v6;
    }

    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  return v10;
}

uint64_t FCAppConfigurationIntegerValue(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = [a1 objectForKeyedSubscript:a2];
    if (v4)
    {
      v5 = [MEMORY[0x1E695DFB0] null];

      if (v4 != v5)
      {
        a3 = [v4 longLongValue];
      }
    }
  }

  return a3;
}

uint64_t FCAppConfigurationBoolValue(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = [a1 objectForKeyedSubscript:a2];
    if (v4)
    {
      v5 = [MEMORY[0x1E695DFB0] null];

      if (v4 != v5)
      {
        a3 = [v4 BOOLValue];
      }
    }
  }

  return a3;
}

double FCAppConfigurationDoubleValue(void *a1, uint64_t a2, double a3)
{
  if (a1)
  {
    v4 = [a1 objectForKeyedSubscript:a2];
    if (v4)
    {
      v5 = [MEMORY[0x1E695DFB0] null];

      if (v4 != v5)
      {
        [v4 doubleValue];
        a3 = v6;
      }
    }
  }

  return a3;
}

id FCAppConfigurationDictionaryValueWithDefaultValue(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    v7 = [a1 objectForKeyedSubscript:a2];
    if (!v7 || ([MEMORY[0x1E695DFB0] null], v8 = objc_claimAutoreleasedReturnValue(), v8, v9 = v7, v7 == v8))
    {
      v9 = v6;
    }

    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  return v10;
}

id FCAppConfigurationNumberValue(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    v7 = [a1 objectForKeyedSubscript:a2];
    if (!v7 || ([MEMORY[0x1E695DFB0] null], v8 = objc_claimAutoreleasedReturnValue(), v8, v9 = v7, v7 == v8))
    {
      v9 = v6;
    }

    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  return v10;
}

id FCAppConfigurationStringValue(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    v7 = [a1 objectForKeyedSubscript:a2];
    if (!v7 || ([MEMORY[0x1E695DFB0] null], v8 = objc_claimAutoreleasedReturnValue(), v8, v9 = v7, v7 == v8))
    {
      v9 = v6;
    }

    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  return v10;
}

id PingBasedOnlineNetworkTransitionMonitor.init(configurationManager:hostName:port:)(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v22 - v11;
  v13 = OBJC_IVAR___FCPingBasedOnlineNetworkTransitionMonitor_dateOfLastTransitionLock;
  v14 = sub_1B67D877C();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AD68, &qword_1B6814558);
  v16 = *(v15 + 52);
  v17 = (*(v15 + 48) + 3) & 0x1FFFFFFFCLL;
  v18 = swift_allocObject();
  *(v18 + ((*(*v18 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1B6404758(v12, v18 + *(*v18 + *MEMORY[0x1E69E6B68] + 16));
  *&v4[v13] = v18;
  *&v4[OBJC_IVAR___FCPingBasedOnlineNetworkTransitionMonitor_configurationManager] = a1;
  v19 = &v4[OBJC_IVAR___FCPingBasedOnlineNetworkTransitionMonitor_hostName];
  *v19 = a2;
  *(v19 + 1) = a3;
  *&v4[OBJC_IVAR___FCPingBasedOnlineNetworkTransitionMonitor_port] = a4;
  v20 = type metadata accessor for PingBasedOnlineNetworkTransitionMonitor();
  v22.receiver = v4;
  v22.super_class = v20;
  return objc_msgSendSuper2(&v22, sel_init);
}

void sub_1B6402B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6402D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id FCPermanentURLForRecordID(void *a1, unint64_t a2, void *a3, int a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a3;
  v25 = 2;
  v24 = 0;
  v23 = 0;
  if ([v8 isEqualToString:@"com.apple.news.public"])
  {
    v9 = 1;
LABEL_11:
    v23 = v9;
    goto LABEL_12;
  }

  if ([v8 isEqualToString:@"com.apple.news.public.staging"])
  {
    v9 = 2;
    goto LABEL_11;
  }

  if ([v8 isEqualToString:@"com.apple.news.public.qa"])
  {
    v9 = 3;
    goto LABEL_11;
  }

  if ([v8 isEqualToString:@"com.apple.news.public.demo1"])
  {
    v9 = 12;
    goto LABEL_11;
  }

  if ([v8 isEqualToString:@"com.apple.news.public.demo2"])
  {
    v9 = 13;
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unknown container identifier for permanent URLs: %@", v8];
    *buf = 136315906;
    v27 = "NSURL *FCPermanentURLForRecordID(NSString *__strong, FCCKRecordAssetField, NSString *__strong, BOOL)";
    v28 = 2080;
    v29 = "FCAssetURLUtilities.m";
    v30 = 1024;
    v31 = 64;
    v32 = 2114;
    v33 = v22;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_12:
  if (a2 >= 4)
  {
    [v7 length];
    v19 = 0;
  }

  else
  {
    v10 = off_1E7C46648[a2];
    buf[0] = [v7 length];
    v11 = [MEMORY[0x1E695DF88] data];
    [v11 appendBytes:&v25 length:1];
    [v11 appendBytes:&v23 length:1];
    [v11 appendBytes:buf length:1];
    v12 = [v7 dataUsingEncoding:4];
    [v11 appendData:v12];

    [v11 appendBytes:&v24 length:1];
    [v11 appendBytes:v10 length:strlen(v10)];
    v13 = [v11 fc_URLSafeBase64EncodedStringWithOptions:0];
    v14 = objc_alloc_init(MEMORY[0x1E696AF20]);
    v15 = v14;
    if (a4)
    {
      v16 = @"https";
    }

    else
    {
      v16 = @"http";
    }

    [v14 setScheme:v16];
    v17 = FCPermanentURLHostForContainerIdentifier(v8);
    [v15 setHost:v17];

    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/%@", v13];
    [v15 setPath:v18];

    v19 = [v15 URL];
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

void __FCPermanentURLHostForContainerIdentifier_block_invoke()
{
  v0 = NewsCoreUserDefaults();
  byte_1EDB27939 = [v0 BOOLForKey:@"replace_cdn_with_cvws"];
}

__CFString *FCPermanentURLHostForContainerIdentifier(void *a1)
{
  v1 = a1;
  if (qword_1EDB27948 != -1)
  {
    dispatch_once(&qword_1EDB27948, &__block_literal_global_37_1);
  }

  if ((byte_1EDB27939 & 1) != 0 || ([v1 isEqualToString:@"com.apple.news.public"] & 1) == 0)
  {
    v2 = @"cvws.icloud-content.com";
  }

  else
  {
    v2 = @"c.apple.news";
  }

  return v2;
}

id AppBundleID()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];

  return v1;
}

uint64_t FCAppConfigurationPositiveIntegerValue(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = [a1 objectForKeyedSubscript:a2];
    if (v4)
    {
      v5 = [MEMORY[0x1E695DFB0] null];

      if (v4 != v5 && ([v4 longLongValue] & 0x8000000000000000) == 0)
      {
        a3 = [v4 longLongValue];
      }
    }
  }

  return a3;
}

__CFString *FCOfflineModePingHostName(unint64_t a1)
{
  if (a1)
  {
    v2 = FCNewsAssetServerHostNameForEnvironment(a1);
  }

  else
  {
    v2 = @"gateway.icloud.com";
  }

  return v2;
}

id FCGenerateOperationID()
{
  v0 = 0;
  v5 = *MEMORY[0x1E69E9840];
  do
  {
    v4[v0++] = aAbcdef01234567[arc4random_uniform(0x10u)];
  }

  while (v0 != 16);
  v4[16] = 0;
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

id FCHandleOperationTimeout(dispatch_time_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "timeoutQueue"];
    *buf = 136315906;
    v17 = "FCOperationCancelledTest  _Nonnull FCHandleOperationTimeout(dispatch_time_t, __strong dispatch_queue_t _Nonnull, __strong dispatch_block_t _Nonnull)";
    v18 = 2080;
    v19 = "FCBlockUtilities.m";
    v20 = 1024;
    v21 = 243;
    v22 = 2114;
    v23 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v6)
    {
      goto LABEL_6;
    }
  }

  else if (v6)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "timeoutHandler"];
    *buf = 136315906;
    v17 = "FCOperationCancelledTest  _Nonnull FCHandleOperationTimeout(dispatch_time_t, __strong dispatch_queue_t _Nonnull, __strong dispatch_block_t _Nonnull)";
    v18 = 2080;
    v19 = "FCBlockUtilities.m";
    v20 = 1024;
    v21 = 244;
    v22 = 2114;
    v23 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (a1 == -1)
  {
    v9 = &__block_literal_global_15_1;
  }

  else
  {
    v15 = 0;
    v7 = FCHandleOperationCancellation(&v15, v6);
    v8 = v15;
    dispatch_after(a1, v5, v8);
    v9 = _Block_copy(v7);
  }

  v10 = _Block_copy(v9);

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

uint64_t sub_1B6403FD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B640439C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_1EDB20440)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EDB20440);
    }
  }
}

id FCURLForContainerizedUserAccountDocumentDirectory(char a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((a1 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"this function is only supported for containerized processes"];
    v5 = 136315906;
    v6 = "NSURL *FCURLForContainerizedUserAccountDocumentDirectory(BOOL)";
    v7 = 2080;
    v8 = "FCFileURLs.m";
    v9 = 1024;
    v10 = 78;
    v11 = 2114;
    v12 = v4;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v5, 0x26u);
  }

  if (qword_1EDB271F0 != -1)
  {
    dispatch_once(&qword_1EDB271F0, &__block_literal_global_6_1);
  }

  v1 = qword_1EDB271E8;
  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

uint64_t __FCURLForContainerizedUserAccountDocumentDirectory_block_invoke()
{
  qword_1EDB271E8 = FCURLForDirectoryInDomain(NSDocumentDirectory, 1uLL);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t FCCurrentQoSOrUtilityIfMain()
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    return 17;
  }

  return FCCurrentQoS();
}

uint64_t sub_1B6404758(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

dispatch_queue_global_t FCDispatchQueueForQualityOfService(uint64_t a1)
{
  if (a1 == 33)
  {
    v1 = 33;
  }

  else
  {
    v1 = 0;
  }

  if (a1 == 25)
  {
    v1 = 25;
  }

  if (a1 == 17)
  {
    v1 = 17;
  }

  v2 = 21;
  if (a1 == 9)
  {
    v3 = 9;
  }

  else
  {
    v3 = 0;
  }

  if (a1 != -1)
  {
    v2 = v3;
  }

  if (a1 <= 16)
  {
    v4 = v2;
  }

  else
  {
    v4 = v1;
  }

  return dispatch_get_global_queue(v4, 0);
}

void __FCPersistenceQueue_block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);
  v1 = dispatch_queue_create("com.apple.newscore.persistence", v0);
  v2 = _MergedGlobals_201;
  _MergedGlobals_201 = v1;
}

void sub_1B6409B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void FCVisitLocallyPrunableHistoryItems(void *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E695DF00];
  v5 = a1;
  v6 = [v4 date];
  v7 = [v6 fc_dateBySubtractingTimeInterval:7776000.0];
  v8 = [v6 fc_dateBySubtractingTimeInterval:864000.0];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __FCVisitLocallyPrunableHistoryItems_block_invoke;
  aBlock[3] = &unk_1E7C36BC8;
  v18 = v7;
  v19 = v8;
  v9 = v8;
  v10 = v7;
  v11 = _Block_copy(aBlock);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __FCVisitLocallyPrunableHistoryItems_block_invoke_2;
  v14[3] = &unk_1E7C41EE8;
  v15 = v11;
  v16 = v3;
  v12 = v3;
  v13 = v11;
  [v5 enumerateObjectsUsingBlock:v14];
}

void sub_1B640AF0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void FCDispatchGroupWrap(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "group"];
    *buf = 136315906;
    v13 = "void FCDispatchGroupWrap(__strong dispatch_group_t _Nonnull, void (^__strong _Nonnull)(__strong dispatch_block_t))";
    v14 = 2080;
    v15 = "FCBlockUtilities.m";
    v16 = 1024;
    v17 = 270;
    v18 = 2114;
    v19 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v4)
    {
      goto LABEL_6;
    }
  }

  else if (v4)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "block"];
    *buf = 136315906;
    v13 = "void FCDispatchGroupWrap(__strong dispatch_group_t _Nonnull, void (^__strong _Nonnull)(__strong dispatch_block_t))";
    v14 = 2080;
    v15 = "FCBlockUtilities.m";
    v16 = 1024;
    v17 = 271;
    v18 = 2114;
    v19 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  dispatch_group_enter(v3);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FCDispatchGroupWrap_block_invoke;
  v10[3] = &unk_1E7C36EA0;
  v11 = v3;
  v5 = v4[2];
  v6 = v3;
  v5(v4, v10);

  v7 = *MEMORY[0x1E69E9840];
}

id FCPersistenceQueue()
{
  if (qword_1EDB278E0 != -1)
  {
    dispatch_once(&qword_1EDB278E0, &__block_literal_global_157);
  }

  v1 = _MergedGlobals_201;

  return v1;
}

id FCURLForFeldsparUserAccountHomeDirectoryForEnvironment(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "environmentIdentifier"];
    *buf = 136315906;
    v10 = "NSURL *FCURLForFeldsparUserAccountHomeDirectoryForEnvironment(NSString *__strong)";
    v11 = 2080;
    v12 = "FCFileURLs.m";
    v13 = 1024;
    v14 = 126;
    v15 = 2114;
    v16 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v2 = FCURLForFeldsparUserAccountHomeDirectory();
  v3 = [v2 URLByAppendingPathComponent:v1 isDirectory:1];

  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = 0;
  [v4 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:&v8];

  v5 = *MEMORY[0x1E69E9840];

  return v3;
}

void sub_1B640D01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id FCBlockWithQualityOfService(uint64_t a1, dispatch_block_t block)
{
  if (a1 == 33)
  {
    v3 = 33;
  }

  else
  {
    v3 = 0;
  }

  if (a1 == 25)
  {
    v4 = 25;
  }

  else
  {
    v4 = v3;
  }

  if (a1 == 17)
  {
    v5 = 17;
  }

  else
  {
    v5 = v4;
  }

  if (a1 == 9)
  {
    v6 = 9;
  }

  else
  {
    v6 = 0;
  }

  if (a1 == -1)
  {
    v7 = 21;
  }

  else
  {
    v7 = v6;
  }

  if (a1 <= 16)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  v9 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v8, 0, block);
  v10 = _Block_copy(v9);

  return v10;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1B640D3A4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B640D3F8(uint64_t *a1)
{
  if (!MEMORY[0x1E69E7D58])
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }

  v1 = *a1;
  sub_1B67D8A1C();
  sub_1B67D9DFC();
  return sub_1B67D8A3C();
}

uint64_t sub_1B640D450(uint64_t a1)
{
  v1 = *(a1 + 80);
  sub_1B67D8A1C();
  sub_1B67D9DFC();
  result = sub_1B67D8A3C();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id FCURLForNotificationDropbox()
{
  v0 = +[FCContextConfiguration defaultConfiguration];
  v1 = [v0 privateDataContainerCombinationIdentifier];
  v2 = FCURLForFeldsparUserAccountHomeDirectoryForEnvironment(v1);

  v3 = [v2 URLByAppendingPathComponent:@"notificationDropboxData" isDirectory:0];

  return v3;
}

uint64_t FCPersonalizationDataMaxAggregates()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  if ([v0 BOOLForKey:@"personalization_low_aggregate_cap"])
  {
    v1 = 100;
  }

  else
  {
    v1 = 6000;
  }

  return v1;
}

id FCBaseURLForSharedPrivateData()
{
  v0 = +[FCContextConfiguration defaultConfiguration];
  v1 = [v0 privateDataContainerCombinationIdentifier];
  v2 = FCURLForGroupContainerForEnvironment(@"group.com.apple.news", v1);

  return v2;
}

void sub_1B6413510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1B6413530()
{
  v0 = sub_1B67D85FC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00]();
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = FCURLForTodayDropbox();
  if (result)
  {
    v6 = result;
    sub_1B67D85AC();

    v7 = objc_allocWithZone(FCFileCoordinatedTodayDropbox);
    v8 = sub_1B67D858C();
    v9 = [v7 initWithFileURL_];

    (*(v1 + 8))(v4, v0);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id FCURLForGroupContainerForEnvironment(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "groupIdentifier"];
    *buf = 136315906;
    v14 = "NSURL *FCURLForGroupContainerForEnvironment(NSString *__strong, NSString *__strong)";
    v15 = 2080;
    v16 = "FCFileURLs.m";
    v17 = 1024;
    v18 = 145;
    v19 = 2114;
    v20 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v4)
    {
      goto LABEL_6;
    }
  }

  else if (v4)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "environmentIdentifier"];
    *buf = 136315906;
    v14 = "NSURL *FCURLForGroupContainerForEnvironment(NSString *__strong, NSString *__strong)";
    v15 = 2080;
    v16 = "FCFileURLs.m";
    v17 = 1024;
    v18 = 146;
    v19 = 2114;
    v20 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v5 = FCURLForGroupIdentifier(v3);
  v6 = [v5 URLByAppendingPathComponent:v4 isDirectory:1];

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v12 = 0;
  [v7 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v12];

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

id FCURLForGroupIdentifier(void *a1)
{
  v1 = MEMORY[0x1E696AC08];
  v2 = a1;
  v3 = [v1 defaultManager];
  v4 = [v3 containerURLForSecurityApplicationGroupIdentifier:v2];

  return v4;
}

uint64_t type metadata accessor for PrivateZoneLocation()
{
  result = qword_1EDB26480;
  if (!qword_1EDB26480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id FCBaseURLForPrivateData()
{
  v0 = +[FCContextConfiguration defaultConfiguration];
  v1 = FCURLForContainerizedUserAccountDocumentDirectory(1);
  v2 = [v0 privateDataContainerCombinationIdentifier];
  v3 = [v1 URLByAppendingPathComponent:v2];

  return v3;
}

unint64_t sub_1B6413B38()
{
  result = qword_1EDB1F638;
  if (!qword_1EDB1F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F638);
  }

  return result;
}

void *sub_1B6413B98(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1B6418B14(a1);

  return v2;
}

uint64_t sub_1B6413BE4()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B6422E9C;

  return sub_1B64162F4(v3, v4, v5, v2);
}

unint64_t sub_1B6413C78()
{
  result = qword_1EDB1F3F0;
  if (!qword_1EDB1F3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F3F0);
  }

  return result;
}

uint64_t sub_1B6413CCC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *PrivateZone.init(context:location:logger:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1B64156A0(a1, a2, a3);

  return v3;
}

id UserEventHistoryStorage.init(privateZone:logger:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B641ABD4(a1, a2);

  return v2;
}

uint64_t sub_1B6413EA4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v7 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v5 = sub_1B64A9ED4;
  }

  else
  {
    v5 = sub_1B6416D20;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

id FCURLForTodayDropbox()
{
  v0 = +[FCContextConfiguration defaultConfiguration];
  v1 = [v0 privateDataContainerCombinationIdentifier];
  v2 = FCURLForFeldsparUserAccountHomeDirectoryForEnvironment(v1);

  v3 = [v2 URLByAppendingPathComponent:@"todayWidgetDropboxData" isDirectory:0];
  v4 = FCBaseURLForSharedPrivateData();
  v5 = [v4 URLByAppendingPathComponent:@"todayWidgetDropboxData" isDirectory:0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __FCURLForTodayDropbox_block_invoke;
  v12[3] = &unk_1E7C36C58;
  v6 = v5;
  v13 = v6;
  v14 = v3;
  v7 = FCURLForTodayDropbox_onceToken[0];
  v8 = v3;
  if (v7 != -1)
  {
    dispatch_once(FCURLForTodayDropbox_onceToken, v12);
  }

  v9 = v14;
  v10 = v6;

  return v6;
}

void sub_1B6415320(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94BAB0, &qword_1B681A088);
  v2 = sub_1B67D88CC();
  if (v2)
  {
    v3 = [v2 isPrivateDataSyncingAllowed];
    swift_unknownObjectRelease();
    type metadata accessor for PrivateDataContext();
    if (v3)
    {
      sub_1B63F3DA0(0, &qword_1EB94BAE0, 0x1E695B888);
      v4 = static CKContainer.newsPrivateSecure.getter();
      static PrivateDataContext.readWriteCloud(container:apsMachServiceName:relatedAppBundleID:)(v4, 0, 0, 0, 0);
    }

    else
    {
      static PrivateDataContext.readWriteLocal.getter();
    }
  }

  else
  {
    __break(1u);
  }
}

double static PrivateDataContext.readWriteLocal.getter()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  return result;
}

unint64_t sub_1B6415438()
{
  result = qword_1EDB1F5F8;
  if (!qword_1EDB1F5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F5F8);
  }

  return result;
}

unint64_t sub_1B6415490()
{
  result = qword_1EDB1F600;
  if (!qword_1EDB1F600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F600);
  }

  return result;
}

unint64_t sub_1B64154E8()
{
  result = qword_1EDB1F630;
  if (!qword_1EDB1F630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F630);
  }

  return result;
}

unint64_t sub_1B641553C()
{
  result = qword_1EDB1F618;
  if (!qword_1EDB1F618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F618);
  }

  return result;
}

unint64_t sub_1B6415590()
{
  result = qword_1EDB1F610;
  if (!qword_1EDB1F610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F610);
  }

  return result;
}

unint64_t sub_1B64155E4()
{
  result = qword_1EDB1F620;
  if (!qword_1EDB1F620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F620);
  }

  return result;
}

void *PrivateZone.__allocating_init(context:location:logger:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  v9 = sub_1B64156A0(a1, a2, a3);

  return v9;
}

void *sub_1B64156A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v50 = a3;
  v51 = a2;
  v44 = *v3;
  v6 = v44;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v49 = &v44 - v9;
  v10 = type metadata accessor for PrivateZoneLocation();
  v45 = *(v10 - 8);
  v11 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v46 = v12;
  v47 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B3E0, &qword_1B68165A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v44 - v15;
  v17 = sub_1B67D8A9C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[2] = 0;
  type metadata accessor for SerialTaskQueue();
  v3[3] = sub_1B64185E8();
  v22 = *(v6 + 104);
  v23 = *(v6 + 88);
  v24 = v22;
  type metadata accessor for PrivateZoneChange();
  sub_1B67D988C();
  v52[0] = sub_1B6415ED8();
  v3[5] = 0;
  *(v3 + 8) = 0;
  v25 = type metadata accessor for Multicaster();
  (*(*(v25 - 8) + 32))(v3 + 5, v52, v25);
  v26 = *(a1 + 40);
  v27 = *(a1 + 48);
  v48 = a1;
  v4[6] = v26;
  v4[7] = v27;
  sub_1B6415FF0(v50, v16, &unk_1EB94B3E0, &qword_1B68165A0);
  v28 = *(v18 + 48);
  if (v28(v16, 1, v17) == 1)
  {

    v29 = sub_1B64189EC();
    (*(v18 + 16))(v21, v29, v17);
    if (v28(v16, 1, v17) != 1)
    {
      sub_1B6418AB4(v16, &unk_1EB94B3E0, &qword_1B68165A0);
    }
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
  }

  (*(v18 + 32))(v4 + qword_1EDB265A0, v21, v17);
  v31 = *(v44 + 96);
  v52[0] = *(v44 + 80);
  v30 = v52[0];
  v52[1] = v23;
  v52[2] = v31;
  v52[3] = v24;
  v32 = v24;
  _s11AccessModelOMa();
  type metadata accessor for ThrowingLazy();
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = v47;
  sub_1B6418A50(v51, v47);
  v35 = (*(v45 + 80) + 64) & ~*(v45 + 80);
  v36 = swift_allocObject();
  v36[2] = v30;
  v36[3] = v23;
  v36[4] = v31;
  v36[5] = v32;
  v36[6] = v33;
  v36[7] = v48;
  sub_1B6416058(v34, v36 + v35);

  v37 = sub_1B64160BC(sub_1B64165EC, v36);
  v38 = v4[2];
  v4[2] = v37;

  v39 = sub_1B67D993C();
  v40 = v49;
  (*(*(v39 - 8) + 56))(v49, 1, 1, v39);
  v41 = swift_allocObject();
  swift_weakInit();

  v42 = swift_allocObject();
  v42[2] = 0;
  v42[3] = 0;
  v42[4] = v30;
  v42[5] = v23;
  v42[6] = v31;
  v42[7] = v32;
  v42[8] = v41;
  sub_1B64CB48C(0, 0, v40, &unk_1B6818C68, v42);

  sub_1B6418AB4(v50, &unk_1EB94B3E0, &qword_1B68165A0);
  sub_1B6416298(v51);
  sub_1B6418AB4(v40, &unk_1EB94A300, &qword_1B68111C0);
  return v4;
}

uint64_t sub_1B6415C48()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B6415C80()
{
  v1 = *(type metadata accessor for PrivateZoneLocation() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 48);

  v6 = *(v0 + 56);

  v7 = sub_1B67D85FC();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B6415D9C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B6415E00()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A058, &qword_1B6810D48);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

void sub_1B6415E78()
{
  if (!qword_1EDB1FB18[0])
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EDB1FB18);
    }
  }
}

uint64_t sub_1B6415ED8()
{
  v0 = sub_1B67D87BC();
  v1 = sub_1B67D999C();
  swift_getTupleTypeMetadata2();
  v2 = sub_1B67D980C();
  v3 = sub_1B6415F9C(&unk_1EDB1FBB0, MEMORY[0x1E69695A8]);
  v4 = sub_1B64186AC(v2, v0, v1, v3);

  return v4;
}

uint64_t sub_1B6415F9C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B6415FF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B6416058(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateZoneLocation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B64160BC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_1B641610C(a1, a2);
  return v7;
}

void *sub_1B641610C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = sub_1B67D8A1C();
  v8 = sub_1B67D9DFC();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v12 = &v17 - v11;
  v13 = v2 + *(v5 + 96);
  (*(*(v7 - 8) + 56))(&v17 - v11, 1, 1, v7);
  *v13 = 0;
  v14 = *(sub_1B67D8A3C() + 28);
  v15 = sub_1B67D8A4C();
  bzero(&v13[v14], *(*(v15 - 8) + 64));
  (*(v9 + 32))(&v13[v14], v12, v8);
  v2[2] = a1;
  v2[3] = a2;
  return v2;
}

uint64_t sub_1B6416298(uint64_t a1)
{
  v2 = type metadata accessor for PrivateZoneLocation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B64162F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(v4 + 144) = a4;
  *(v4 + 152) = *a4;
  return MEMORY[0x1EEE6DFA0](sub_1B6418D74, 0, 0);
}

uint64_t sub_1B641633C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B64258A0;

  return v7(a1);
}

uint64_t sub_1B6416434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1B67D8A9C();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B64190C0, 0, 0);
}

uint64_t sub_1B64164F4()
{
  v2 = *(v0 + 64);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B6422E9C;

  return sub_1B6416A20(v3, v4, v5, v2);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1B64165EC@<X0>(uint64_t *a1@<X8>)
{
  v24 = *(v1 + 32);
  v26 = *(v1 + 16);
  v4 = *(*(type metadata accessor for PrivateZoneLocation() - 8) + 80);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = (v4 + 64) & ~v4;
    v10 = *Strong;
    v11 = sub_1B6419350(Strong, v1 + v9);
    if (v2)
    {
    }

    else
    {
      v13 = v10[10];
      v14 = v10[11];
      v16 = v10[12];
      v15 = v10[13];
      v25 = v11;
      v27 = v12;
      sub_1B641C49C(&v28);
      v19 = sub_1B641D190();

      if (v19)
      {
        sub_1B641C49C(v29);
        v30 = sub_1B6501BDC();

        v23 = v8[3];
        v20 = swift_allocObject();
        swift_weakInit();
        v21 = swift_allocObject();
        v21[2] = v13;
        v21[3] = v14;
        v21[4] = v16;
        v21[5] = v15;
        v21[6] = v20;
        v21[7] = v25;
        v22 = v30;
        v21[8] = v27;
        v21[9] = v22;

        sub_1B65003C0(v25, v27);
        sub_1B645C7AC(&unk_1B6818C78, v21);
      }

      *a1 = v25;
      a1[1] = v27;
    }
  }

  else
  {
    v29[0] = v26;
    v29[1] = v24;
    type metadata accessor for PrivateZone.Errors();
    swift_getWitnessTable();
    swift_allocError();
    *v18 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B64168F0()
{
  v1 = v0[6];

  sub_1B641FC34(v0[7], v0[8]);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1B6416930()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_1B6413EA4;

    return sub_1B6419EA0(0, 1);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1B6416A48(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PrivateZoneType.query<A>(options:executor:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[3] = a1;
  v8[2] = *a2;
  v11 = *(a7 + 88);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v8[10] = v13;
  *v13 = v8;
  v13[1] = sub_1B6426A40;

  return (v15)(v8 + 2, a5, a7);
}

unint64_t sub_1B6416C2C()
{
  result = qword_1EDB1E7E0;
  if (!qword_1EDB1E7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1E7E0);
  }

  return result;
}

unint64_t sub_1B6416C84()
{
  result = qword_1EDB1FA38;
  if (!qword_1EDB1FA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB94A100, &qword_1B680FD50);
    sub_1B6421ED0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1FA38);
  }

  return result;
}

uint64_t sub_1B6416D08(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_1B6416D20()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = *(v0[6] + 32);
  *(swift_task_alloc() + 16) = v2;

  os_unfair_lock_lock((v3 + 24));
  sub_1B641B020((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
  if (!v1)
  {
    v4 = v0[8];
    v5 = v0[6];

    v6 = *(v5 + 40);
    *(swift_task_alloc() + 16) = v4;

    os_unfair_lock_lock((v6 + 24));
    sub_1B6413FB8((v6 + 16));
    os_unfair_lock_unlock((v6 + 24));
    v7 = v0[8];
    v8 = v0[6];

    v9 = v0[1];

    v9();
  }
}

unint64_t sub_1B64176BC()
{
  result = qword_1EDB1F9A8;
  if (!qword_1EDB1F9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F9A8);
  }

  return result;
}

unint64_t sub_1B6417710()
{
  result = qword_1EDB1F9B8;
  if (!qword_1EDB1F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F9B8);
  }

  return result;
}

void __FCURLForTodayDropbox_block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) checkResourceIsReachableAndReturnError:0] & 1) == 0 && objc_msgSend(*(a1 + 40), "checkResourceIsReachableAndReturnError:", 0))
  {
    v2 = [MEMORY[0x1E696AC08] defaultManager];
    [v2 moveItemAtURL:*(a1 + 40) toURL:*(a1 + 32) error:0];
  }
}

void sub_1B6417D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1B6417DD8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B3E0, &qword_1B68165A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v47 = &v42 - v5;
  v6 = type metadata accessor for PrivateZoneLocation();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v46 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B67D856C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BB50, &qword_1B6814FD0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v42 - v16;
  v18 = sub_1B67D85FC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v50 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v51 = &v42 - v23;
  v24 = a1[3];
  v25 = a1[4];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94BB48, &qword_1B681A0E8);
  result = sub_1B67D88CC();
  if (result)
  {
    v27 = [result privateDataDirectory];
    swift_unknownObjectRelease();
    sub_1B67D964C();

    v44 = v19;
    v45 = v18;
    v43 = *(v19 + 56);
    v43(v17, 1, 1, v18);
    v28 = *(v10 + 104);
    v28(v13, *MEMORY[0x1E6968F70], v9);
    sub_1B67D85CC();
    strcpy(v52, "recipe_history");
    v52[15] = -18;
    v28(v13, *MEMORY[0x1E6968F68], v9);
    sub_1B64B5234();
    v29 = v50;
    sub_1B67D85DC();
    (*(v10 + 8))(v13, v9);
    v30 = v49[4];
    __swift_project_boxed_opaque_existential_1(v49, v49[3]);
    type metadata accessor for PrivateDataContext();
    result = sub_1B67D88BC();
    if (result)
    {
      v31 = result;
      v32 = type metadata accessor for RecipeHistory();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BB60, &unk_1B681A0F0);
      v34 = v44;
      v33 = v45;
      v35 = v46;
      (*(v44 + 16))(v46, v29, v45);
      v43(v35, 0, 1, v33);
      v36 = sub_1B67D8A9C();
      v37 = v47;
      (*(*(v36 - 8) + 56))(v47, 1, 1, v36);
      v38 = PrivateZone.__allocating_init(context:location:logger:)(v31, v35, v37);
      v39 = sub_1B6413B98(v38);
      v40 = v48;
      v48[3] = v32;
      v40[4] = &off_1F2DBFB50;
      *v40 = v39;
      v41 = *(v34 + 8);
      v41(v29, v33);
      return (v41)(v51, v33);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B64182D4()
{
  v0 = sub_1B67D85FC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_1B6418370()
{
  v0 = [objc_opt_self() defaultAvailability];

  return v0;
}

unint64_t sub_1B64183D0(uint64_t a1)
{
  *(a1 + 8) = sub_1B6418400();
  result = sub_1B64155E4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B6418400()
{
  result = qword_1EDB1F628;
  if (!qword_1EDB1F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F628);
  }

  return result;
}

unint64_t sub_1B6418458()
{
  result = qword_1EDB1F608;
  if (!qword_1EDB1F608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F608);
  }

  return result;
}

unint64_t sub_1B64184B8()
{
  result = qword_1EDB1F640[0];
  if (!qword_1EDB1F640[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB1F640);
  }

  return result;
}

uint64_t sub_1B641852C()
{
  result = sub_1B67D8A9C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B64185E8()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = MEMORY[0x1E69E7CC0];
  *(result + 32) = 0;
  return result;
}

void sub_1B6418624(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_getTupleTypeMetadata2();
  if (v2 <= 0x3F)
  {
    sub_1B6415E78();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1B64186AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00]();
  v12 = v23 - v11;
  if (sub_1B67D984C())
  {
    sub_1B67DA0FC();
    v13 = sub_1B67DA0EC();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1B67D984C();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1B67D982C())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1B67D9F1C();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1B64FCAE0(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_1B64189B0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B6418A50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateZoneLocation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6418AB4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_1B6418B14(uint64_t a1)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v5 = &v15 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF38, &qword_1B6814BE8);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  v1[3] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF40, &qword_1B6814BF0);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = v7;
  v1[4] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF48, &qword_1B6814BF8);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = MEMORY[0x1E69E7CC8];
  v1[5] = v9;
  v1[2] = a1;

  sub_1B67D991C();
  v10 = sub_1B67D993C();
  v11 = *(*(v10 - 8) + 56);
  v11(v5, 0, 1, v10);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v1;

  sub_1B6461304(0, 0, v5, &unk_1B6814E28, v12);

  v11(v5, 1, 1, v10);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v1;

  sub_1B644BCA8(0, 0, v5, &unk_1B6814E38, v13);

  return v1;
}

uint64_t sub_1B6418D74()
{
  v1 = *(v0[18] + 16);
  PrivateZone.batchedChanges.getter(v0 + 7);
  v2 = v0[10];
  v3 = __swift_project_boxed_opaque_existential_1(v0 + 7, v2);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  (*(v4 + 16))(v6, v3, v2);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_1B67D9A2C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v7 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v8 = *(MEMORY[0x1E69E85B0] + 4);
  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_1B64AB04C;

  return MEMORY[0x1EEE6D8D0](v0 + 17, 0, 0);
}

void PrivateZone.batchedChanges.getter(uint64_t *a1@<X8>)
{
  v3 = *(*&v1->_os_unfair_lock_opaque + 88);
  v4 = *(*&v1->_os_unfair_lock_opaque + 104);
  type metadata accessor for PrivateZoneChange();
  sub_1B67D988C();
  a1[3] = sub_1B67D99AC();
  a1[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_0(a1);
  os_unfair_lock_lock(v1 + 8);
  sub_1B64191F0();

  os_unfair_lock_unlock(v1 + 8);
}

uint64_t sub_1B641902C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B642694C;

  return sub_1B6416434(v3, v4, v5, v2);
}

uint64_t sub_1B64190C0()
{
  v1 = v0[2];
  v0[6] = swift_allocObject();
  swift_weakInit();
  v2 = *(MEMORY[0x1E69E88A0] + 4);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1B6422EA0;

  return MEMORY[0x1EEE6DD58]();
}

uint64_t sub_1B64191B8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B64191F0()
{
  type metadata accessor for PrivateZoneChange();
  sub_1B67D988C();
  v0 = sub_1B67D997C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v9 - v3;
  swift_checkMetadataState();
  v5 = *MEMORY[0x1E69E8650];
  v6 = sub_1B67D997C();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  v7 = type metadata accessor for Multicaster();
  sub_1B6419BC8(v4, v7);
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1B6419350(void *a1, uint64_t a2)
{
  v60 = a1;
  v65 = a2;
  v3 = *a1;
  v70 = v2;
  v71 = v3;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v59 = &v59 - v5;
  v6 = sub_1B67D8C1C();
  v72 = *(v6 - 8);
  v7 = *(v72 + 64);
  (MEMORY[0x1EEE9AC00])();
  v62 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B67D8E8C();
  v68 = *(v9 - 8);
  v69 = v9;
  v10 = *(v68 + 64);
  (MEMORY[0x1EEE9AC00])();
  v67 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1B67D8C4C();
  v64 = *(v66 - 8);
  v12 = *(v64 + 64);
  (MEMORY[0x1EEE9AC00])();
  v13 = sub_1B67D85FC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  (MEMORY[0x1EEE9AC00])();
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(*(type metadata accessor for PrivateZoneLocation() - 8) + 64);
  (MEMORY[0x1EEE9AC00])();
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1B67D8F5C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  (MEMORY[0x1EEE9AC00])();
  v25 = (&v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B6418A50(v65, v20);
  v26 = (*(v14 + 48))(v20, 1, v13);
  v63 = v6;
  if (v26 == 1)
  {
    v27 = MEMORY[0x1E69D6288];
  }

  else
  {
    (*(v14 + 32))(v17, v20, v13);
    v28 = sub_1B67D85BC();
    v30 = v29;
    (*(v14 + 8))(v17, v13);
    *v25 = v28;
    v25[1] = v30;
    v27 = MEMORY[0x1E69D6280];
  }

  (*(v22 + 104))(v25, *v27, v21);
  sub_1B67D8F8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B928, &qword_1B6819D48);
  v31 = *(v64 + 72);
  v32 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1B68100D0;
  sub_1B67D8C3C();
  v73 = v33;
  sub_1B6416A48(&unk_1EDB1FA20, MEMORY[0x1E69D61D0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B938, &qword_1B6819D50);
  sub_1B641A228();
  sub_1B67D9E5C();
  (*(v68 + 104))(v67, *MEMORY[0x1E69D6268], v69);
  v34 = sub_1B67D8E9C();
  v35 = v70;
  v36 = v71;
  v37 = *(v71 + 88);
  v38 = *(v71 + 104);
  v39 = *(*(v38 + 8) + 8);
  v40 = sub_1B67D8F3C();
  v41 = v72;
  if (v35)
  {
  }

  else
  {
    v42 = v40;
    sub_1B641A49C();
    v43 = sub_1B67D8F3C();
    sub_1B641A78C();
    v44 = sub_1B67D8F3C();
    v46 = MEMORY[0x1EEE9AC00](v44);
    v47 = *(v36 + 96);
    *(&v59 - 6) = *(v36 + 80);
    *(&v59 - 5) = v47;
    *(&v59 - 4) = v38;
    *(&v59 - 3) = v42;
    *(&v59 - 2) = v43;
    *(&v59 - 1) = v46;
    v71 = v46;
    v48 = v62;
    v49 = v63;
    (*(v41 + 104))(v62, *MEMORY[0x1E69D6188], v63);
    sub_1B67D8F4C();
    (*(v41 + 8))(v48, v49);
    v50 = v61[2];
    if (v50 >= 2)
    {
      v51 = v61;
      v52 = v61[3];
      v72 = v61[4];
      v70 = v52;
      v53 = sub_1B67D993C();
      v54 = v59;
      (*(*(v53 - 8) + 56))(v59, 1, 1, v53);
      v55 = swift_allocObject();
      v55[2] = 0;
      v55[3] = 0;
      v56 = v60;
      v55[4] = v51;
      v55[5] = v56;
      v55[6] = v34;
      v55[7] = v50;
      v57 = v72;
      v55[8] = v70;
      v55[9] = v57;
      sub_1B650A0AC(v50);

      v58 = v50;
      sub_1B6509DF0(0, 0, v54, &unk_1B6819D60, v55);
    }
  }

  return v34;
}

uint64_t sub_1B6419B68()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1B6419BC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = sub_1B67D999C();
  v4 = sub_1B67D9DFC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - v6;
  v8 = sub_1B67D87BC();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v11 = *(v3 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - v13;
  sub_1B67D994C();
  sub_1B67D87AC();
  (*(v11 + 16))(v7, v14, v3);
  (*(v11 + 56))(v7, 0, 1, v3);
  sub_1B6415F9C(&unk_1EDB1FBB0, MEMORY[0x1E69695A8]);
  sub_1B67D959C();
  sub_1B67D95BC();
  return (*(v11 + 8))(v14, v3);
}

uint64_t sub_1B6419DF0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1B6422E9C;

  return sub_1B6419E80(v2, v3, v0);
}

uint64_t sub_1B6419EA0(uint64_t a1, char a2)
{
  *(v3 + 104) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1B6419EC4, 0, 0);
}

uint64_t sub_1B6419EC4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 56);
  v3 = *(*(v0 + 64) + 16);
  *(v0 + 72) = v3;
  *(v0 + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A738, &unk_1B68127D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B68100D0;

  *(v4 + 32) = *sub_1B6416A90();
  *(v0 + 40) = v4;
  sub_1B641A28C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A740, &qword_1B6814580);
  sub_1B6413CCC(&qword_1EDB1F028, &qword_1EB94A740, &qword_1B6814580);
  sub_1B67D9E5C();
  *(v0 + 48) = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1 & 1;
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BB60, &unk_1B681A0F0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF50, &qword_1B6814C10);
  v9 = sub_1B6413CCC(&unk_1EDB1FA10, &unk_1EB94BB60, &unk_1B681A0F0);
  *v6 = v0;
  v6[1] = sub_1B641AECC;

  return PrivateZoneType.query<A>(options:executor:)(v0 + 16, (v0 + 48), sub_1B6422CEC, v5, v7, v8, v9);
}

uint64_t sub_1B641A100()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = sub_1B641A1BC();
    sub_1B641FC34(v2, v3);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B641A1BC()
{
  if (*(v0 + 16))
  {

    sub_1B64251D4(&v3);

    if (!v1)
    {
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B641A228()
{
  result = qword_1EDB1F030;
  if (!qword_1EDB1F030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB94B938, &qword_1B6819D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F030);
  }

  return result;
}

unint64_t sub_1B641A28C()
{
  result = qword_1EDB1F3E8;
  if (!qword_1EDB1F3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F3E8);
  }

  return result;
}

unint64_t sub_1B641A2E8()
{
  result = qword_1EDB1F3E0;
  if (!qword_1EDB1F3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F3E0);
  }

  return result;
}

id sub_1B641A33C(void *a1, SEL *a2)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94BB48, &qword_1B681A0E8);
  result = sub_1B67D88CC();
  if (result)
  {
    v5 = [result *a2];
    v6 = [v5 storage];
    swift_unknownObjectRelease();

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_1B641A49C()
{
  result = qword_1EDB1F740;
  if (!qword_1EDB1F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F740);
  }

  return result;
}

unint64_t sub_1B641A4F4()
{
  result = qword_1EDB1F720;
  if (!qword_1EDB1F720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F720);
  }

  return result;
}

unint64_t sub_1B641A54C()
{
  result = qword_1EDB1F710;
  if (!qword_1EDB1F710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F710);
  }

  return result;
}

unint64_t sub_1B641A5A8()
{
  result = qword_1EDB1F718;
  if (!qword_1EDB1F718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F718);
  }

  return result;
}

unint64_t sub_1B641A600()
{
  result = qword_1EDB1F730;
  if (!qword_1EDB1F730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F730);
  }

  return result;
}

unint64_t sub_1B641A658(uint64_t a1)
{
  *(a1 + 8) = sub_1B641A6E0();
  result = sub_1B6421DA8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B641A688()
{
  result = qword_1EDB1F738;
  if (!qword_1EDB1F738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F738);
  }

  return result;
}

unint64_t sub_1B641A6E0()
{
  result = qword_1EDB1E808[0];
  if (!qword_1EDB1E808[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB1E808);
  }

  return result;
}

unint64_t sub_1B641A738()
{
  result = qword_1EDB1F728;
  if (!qword_1EDB1F728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F728);
  }

  return result;
}

unint64_t sub_1B641A78C()
{
  result = qword_1EDB1FA00;
  if (!qword_1EDB1FA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1FA00);
  }

  return result;
}

unint64_t sub_1B641A7E0()
{
  result = qword_1EDB1E7F0;
  if (!qword_1EDB1E7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1E7F0);
  }

  return result;
}

unint64_t sub_1B641A83C()
{
  result = qword_1EDB1F9D8;
  if (!qword_1EDB1F9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F9D8);
  }

  return result;
}

unint64_t sub_1B641A890()
{
  result = qword_1EDB1E7D0;
  if (!qword_1EDB1E7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1E7D0);
  }

  return result;
}

unint64_t sub_1B641A8F4()
{
  result = qword_1EDB1F9C8;
  if (!qword_1EDB1F9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F9C8);
  }

  return result;
}

unint64_t sub_1B641A948()
{
  result = qword_1EDB1E7C0;
  if (!qword_1EDB1E7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1E7C0);
  }

  return result;
}

unint64_t sub_1B641A9AC()
{
  result = qword_1EDB1E7C8;
  if (!qword_1EDB1E7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1E7C8);
  }

  return result;
}

unint64_t sub_1B641AA00()
{
  result = qword_1EDB1F9D0;
  if (!qword_1EDB1F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F9D0);
  }

  return result;
}

unint64_t sub_1B641AA5C()
{
  result = qword_1EDB1F9E8;
  if (!qword_1EDB1F9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F9E8);
  }

  return result;
}

unint64_t sub_1B641AAB8()
{
  result = qword_1EDB1F9F0;
  if (!qword_1EDB1F9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F9F0);
  }

  return result;
}

unint64_t sub_1B641AB10()
{
  result = qword_1EDB1E7E8;
  if (!qword_1EDB1E7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1E7E8);
  }

  return result;
}

unint64_t sub_1B641AB68()
{
  result = qword_1EDB1F9E0;
  if (!qword_1EDB1F9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F9E0);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

id sub_1B641ABD4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B3E0, &qword_1B68165A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19 - v8;
  v10 = sub_1B67D8A9C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[qword_1EDB20470] = MEMORY[0x1E69E7CC0];
  *&v2[qword_1EDB20468] = 0;
  *&v2[qword_1EDB20460] = 0;
  *&v2[qword_1EB94B518] = a1;
  sub_1B6420BD8(a2, v9);
  v15 = *(v11 + 48);
  if (v15(v9, 1, v10) == 1)
  {

    v16 = sub_1B6422D0C();
    (*(v11 + 16))(v14, v16, v10);
    if (v15(v9, 1, v10) != 1)
    {
      sub_1B6418AB4(v9, &unk_1EB94B3E0, &qword_1B68165A0);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  (*(v11 + 32))(&v2[qword_1EDB21EB0], v14, v10);
  v19.receiver = v2;
  v19.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  sub_1B6418AB4(a2, &unk_1EB94B3E0, &qword_1B68165A0);
  return v17;
}

uint64_t sub_1B641AE44()
{
  v0 = sub_1B67D8A9C();
  __swift_allocate_value_buffer(v0, qword_1EDB20520);
  __swift_project_value_buffer(v0, qword_1EDB20520);
  return sub_1B67D8A8C();
}

uint64_t sub_1B641AECC()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v5 = sub_1B64A7344;
  }

  else
  {
    v5 = sub_1B6422E80;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B641B020(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;

  *a1 = v3;
}

void *sub_1B641B3D8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B3E0, &qword_1B68165A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v47 = &v42 - v5;
  v6 = type metadata accessor for PrivateZoneLocation();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v46 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B67D856C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BB50, &qword_1B6814FD0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v42 - v16;
  v18 = sub_1B67D85FC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v50 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v51 = &v42 - v23;
  v24 = a1[3];
  v25 = a1[4];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94BB48, &qword_1B681A0E8);
  result = sub_1B67D88CC();
  if (result)
  {
    v27 = [result privateDataDirectory];
    swift_unknownObjectRelease();
    sub_1B67D964C();

    v44 = v19;
    v45 = v18;
    v43 = *(v19 + 56);
    v43(v17, 1, 1, v18);
    v28 = *(v10 + 104);
    v28(v13, *MEMORY[0x1E6968F70], v9);
    sub_1B67D85CC();
    v52 = 0x625F657069636572;
    v53 = 0xEA0000000000786FLL;
    v28(v13, *MEMORY[0x1E6968F68], v9);
    sub_1B64B5234();
    v29 = v50;
    sub_1B67D85DC();
    (*(v10 + 8))(v13, v9);
    v30 = v49[4];
    __swift_project_boxed_opaque_existential_1(v49, v49[3]);
    type metadata accessor for PrivateDataContext();
    result = sub_1B67D88BC();
    if (result)
    {
      v31 = result;
      v32 = type metadata accessor for RecipeBox();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AD80, &qword_1B6814588);
      v34 = v44;
      v33 = v45;
      v35 = v46;
      (*(v44 + 16))(v46, v29, v45);
      v43(v35, 0, 1, v33);
      v36 = sub_1B67D8A9C();
      v37 = v47;
      (*(*(v36 - 8) + 56))(v47, 1, 1, v36);
      v38 = PrivateZone.__allocating_init(context:location:logger:)(v31, v35, v37);
      v39 = sub_1B641D5E4(v38);
      v40 = v48;
      v48[3] = v32;
      v40[4] = &off_1F2DBF618;
      *v40 = v39;
      v41 = *(v34 + 8);
      v41(v29, v33);
      return (v41)(v51, v33);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void __FCVisitLocallyPrunableHistoryItems_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __FCVisitLocallyPrunableHistoryItems_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isPruningDisabled] & 1) == 0 && (objc_msgSend(v3, "hasArticleBeenMarkedOffensive") & 1) == 0 && !objc_msgSend(v3, "articleLikingStatus"))
  {
    v6 = [v3 lastVisitedAt];

    if (v6)
    {
      v7 = [v3 lastVisitedAt];
    }

    else
    {
      v8 = [v3 lastListenedAt];

      if (!v8)
      {
        v11 = [v3 firstSeenAt];

        if (!v11)
        {
          v4 = 1;
          goto LABEL_5;
        }

        v9 = [v3 firstSeenAt];
        v10 = 40;
        goto LABEL_11;
      }

      v7 = [v3 lastListenedAt];
    }

    v9 = v7;
    v10 = 32;
LABEL_11:
    v4 = [v9 fc_isEarlierThan:*(a1 + v10)];

    goto LABEL_5;
  }

  v4 = 0;
LABEL_5:

  return v4;
}

id FCThumbnailForHeadlineMinimumSizeInPixels(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = v5;
  if (a2 == *MEMORY[0x1E695F060] && a3 == *(MEMORY[0x1E695F060] + 8))
  {
    v23 = 0;
    goto LABEL_40;
  }

  v8 = [v5 thumbnailLQ];
  if (v8)
  {
    v9 = v8;
    v10 = [v6 thumbnailLQ];
    [v10 thumbnailSize];
    v12 = v11;
    v14 = v13;

    if (v12 >= a2 && v14 >= a3)
    {
      v38 = [v6 thumbnailLQ];
      goto LABEL_26;
    }
  }

  v16 = [v6 thumbnail];
  if (v16)
  {
    v17 = v16;
    v18 = [v6 thumbnail];
    [v18 thumbnailSize];
    v20 = v19;
    v22 = v21;

    if (v20 >= a2 && v22 >= a3)
    {
      v38 = [v6 thumbnail];
      goto LABEL_26;
    }
  }

  v24 = [v6 thumbnailMedium];
  if (v24)
  {
    v25 = v24;
    v26 = [v6 thumbnailMedium];
    [v26 thumbnailSize];
    v28 = v27;
    v30 = v29;

    if (v28 >= a2 && v30 >= a3)
    {
      v38 = [v6 thumbnailMedium];
      goto LABEL_26;
    }
  }

  v31 = [v6 thumbnailHQ];
  if (v31)
  {
    v32 = v31;
    v33 = [v6 thumbnailHQ];
    [v33 thumbnailSize];
    v35 = v34;
    v37 = v36;

    if (v35 >= a2 && v37 >= a3)
    {
      v38 = [v6 thumbnailHQ];
      goto LABEL_26;
    }
  }

  v39 = [v6 thumbnailUltraHQ];

  if (v39)
  {
    v38 = [v6 thumbnailUltraHQ];
LABEL_26:
    v23 = v38;
    if (v38)
    {
      goto LABEL_40;
    }
  }

  v40 = [v6 thumbnailUltraHQ];
  v41 = v40;
  if (v40)
  {
    v23 = v40;
  }

  else
  {
    v42 = [v6 thumbnailHQ];
    v43 = v42;
    if (v42)
    {
      v23 = v42;
    }

    else
    {
      v44 = [v6 thumbnailMedium];
      v45 = v44;
      if (v44)
      {
        v23 = v44;
      }

      else
      {
        v46 = [v6 thumbnail];
        v47 = v46;
        if (v46)
        {
          v48 = v46;
        }

        else
        {
          v48 = [v6 thumbnailLQ];
        }

        v23 = v48;
      }
    }
  }

LABEL_40:

  return v23;
}

__CFString *FCStringFromBundleSubscriptionCachePolicy(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"CachedIfNotThenNetwork";
  }

  else
  {
    return off_1E7C409C8[a1 - 1];
  }
}

uint64_t FCCurrentQoS()
{
  HIDWORD(v0) = qos_class_self() - 9;
  LODWORD(v0) = HIDWORD(v0);
  v1 = 8 * (v0 >> 3) + 9;
  if ((v0 >> 3) >= 4)
  {
    return -1;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1B641C088()
{
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];
  sub_1B67D8D6C();
  sub_1B67D8DFC();

  if (!v1)
  {
    sub_1B67D8D6C();
    sub_1B67D8DFC();

    sub_1B67D8D6C();
    sub_1B67D8DFC();
  }

  return result;
}

uint64_t CKColumn.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1B641C1F0()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = *v0;
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  v7 = sub_1B67D8B8C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  return sub_1B67D8BBC();
}

uint64_t sub_1B641C2B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B641F880();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B641C2F0()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = *v0;
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  v4 = sub_1B67D8B8C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  return sub_1B67D8BEC();
}

uint64_t sub_1B641C36C@<X0>(_OWORD *a1@<X8>)
{
  result = sub_1B67D8CEC();
  if (!v1)
  {
    if (*(result + 16))
    {
      v9 = *(result + 48);
      v7 = *(result + 32);
      v8 = *(result + 64);

      v5 = v7;
      v4 = v8;
      v6 = v9;
    }

    else
    {

      result = sub_1B64220B0(v10);
      v6 = v10[1];
      v4 = v10[2];
      v5 = v10[0];
    }

    *a1 = v5;
    a1[1] = v6;
    a1[2] = v4;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

double sub_1B641C45C@<D0>(_OWORD *a1@<X8>)
{
  sub_1B64220B0(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

double sub_1B641C49C@<D0>(_OWORD *a1@<X8>)
{
  sub_1B641CFC8();
  if (!v1)
  {
    result = *&v4;
    *a1 = v4;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1B641C524(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void FCCoreConfigurationFetch(void *a1, void *a2)
{
  v7 = a1;
  v3 = a2;
  v4 = [v7 configuration];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v4 isDefaultConfiguration] & 1) == 0)
  {
    if (v3)
    {
      v3[2](v3, v4, 0);
    }
  }

  else
  {
    v5 = FCCurrentQoSOrUtilityIfMain();
    v6 = FCDispatchQueueForQualityOfService(v5);
    [v7 fetchConfigurationIfNeededWithCompletionQueue:v6 completion:v3];
  }
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__22(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__25(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__26(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__27(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__29(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__31(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__32(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__Block_byref_object_copy__33(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__35(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__36(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__37(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__39(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__41(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__42(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__43(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__45(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__46(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__47(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__48(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__49(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__51(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__52(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__53(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__54(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__55(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__56(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__57(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__58(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__59(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__60(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__61(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__62(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__63(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__65(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__66(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__67(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__68(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__69(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__71(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__72(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__73(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__74(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__75(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__76(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__Block_byref_object_copy__77(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__78(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__79(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__81(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__82(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__83(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__84(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__85(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__86(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__87(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__88(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__89(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__91(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__92(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__93(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__94(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__95(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__96(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__97(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__98(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__99(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL FCDispatchGroupIsEmpty(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "group"];
    *buf = 136315906;
    v7 = "BOOL FCDispatchGroupIsEmpty(dispatch_group_t  _Nonnull __strong)";
    v8 = 2080;
    v9 = "FCBlockUtilities.m";
    v10 = 1024;
    v11 = 168;
    v12 = 2114;
    v13 = v5;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v2 = dispatch_group_wait(v1, 0) == 0;

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

void FCPerformIfNonNil(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "block"];
    *buf = 136315906;
    v8 = "void FCPerformIfNonNil(id  _Nullable __strong, FCidBlock  _Nonnull __strong)";
    v9 = 2080;
    v10 = "FCBlockUtilities.m";
    v11 = 1024;
    v12 = 37;
    v13 = 2114;
    v14 = v6;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (!v3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (v3)
  {
LABEL_4:
    v4[2](v4, v3);
  }

LABEL_5:

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B641CFC8()
{

  sub_1B67D8F1C();
}

uint64_t sub_1B641D054()
{
  v2 = v0;
  v3 = v0[3];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  result = sub_1B6426BC0(v2[9], v3, v4);
  if (!v1)
  {
    v5();
  }

  return result;
}

double sub_1B641D0D8@<D0>(_OWORD *a1@<X8>)
{
  sub_1B67D8D5C();
  sub_1B641C36C(v5);

  if (!v1)
  {
    v4 = v5[1];
    *a1 = v5[0];
    a1[1] = v4;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1B641D148(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B641D190()
{
  v1 = v0;
  v2 = *(v0 + 16);
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (v5)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 24);
    sub_1B67D8B4C();
    sub_1B67D8DCC();

    return 0;
  }

  return result;
}

unint64_t sub_1B641D534()
{
  result = qword_1EDB1F9B0;
  if (!qword_1EDB1F9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F9B0);
  }

  return result;
}

unint64_t sub_1B641D590()
{
  result = qword_1EDB1F990;
  if (!qword_1EDB1F990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F990);
  }

  return result;
}

void *sub_1B641D5E4(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1B641E654(a1);

  return v2;
}

uint64_t sub_1B641D654()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B6422E9C;

  return sub_1B641D6E8(v3, v4, v5, v2);
}

uint64_t sub_1B641D6E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(v4 + 224) = a4;
  *(v4 + 232) = *a4;
  return MEMORY[0x1EEE6DFA0](sub_1B641D730, 0, 0);
}

uint64_t sub_1B641D730()
{
  v1 = *(v0[28] + 24);
  PrivateZone.batchedChanges.getter(v0 + 7);
  v2 = v0[10];
  v3 = __swift_project_boxed_opaque_existential_1(v0 + 7, v2);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  (*(v4 + 16))(v6, v3, v2);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_1B67D9A2C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v7 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v8 = *(MEMORY[0x1E69E85B0] + 4);
  v9 = swift_task_alloc();
  v0[30] = v9;
  *v9 = v0;
  v9[1] = sub_1B649DE38;

  return MEMORY[0x1EEE6D8D0](v0 + 27, 0, 0);
}

uint64_t sub_1B641D900()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B642694C;

  return sub_1B641D994(v3, v4, v5, v2);
}

uint64_t sub_1B641D994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1B67D8A9C();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B641E998, 0, 0);
}

uint64_t sub_1B641DA54(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1B6422E9C;

  return sub_1B641DAEC(v5, a2, v2);
}

uint64_t sub_1B641DAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B641DB88, 0, 0);
}

uint64_t sub_1B641DB88()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  v3 = v0[7];
  if (Strong)
  {
    v4 = Strong;
    v5 = v0[5];
    v6 = sub_1B67D993C();
    v7 = *(*(v6 - 8) + 56);
    v7(v3, 1, 1, v6);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v4;

    sub_1B641DDF8(v3, &unk_1B6814680, v8);
    sub_1B6418AB4(v3, &unk_1EB94A300, &qword_1B68111C0);
    v7(v3, 1, 1, v6);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v4;

    sub_1B641DDF8(v3, &unk_1B6814690, v9);
    sub_1B6418AB4(v3, &unk_1EB94A300, &qword_1B68111C0);
    v10 = swift_task_alloc();
    v0[9] = v10;
    *v10 = v0;
    v10[1] = sub_1B6425670;
    v11 = v0[5];

    return (sub_1B641EB30)(0, 0);
  }

  else
  {
    v13 = v0[7];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1B641DDF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v20 - v9;
  sub_1B6415FF0(a1, v20 - v9, &unk_1EB94A300, &qword_1B68111C0);
  v11 = sub_1B67D993C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1B6418AB4(v10, &unk_1EB94A300, &qword_1B68111C0);
    if (*(a3 + 16))
    {
LABEL_3:
      v13 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = sub_1B67D989C();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B67D992C();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v4;
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t sub_1B641DFE8()
{
  *(v0 + 56) = **(v0 + 32);
  *(v0 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B920, &qword_1B6811070);
  if (sub_1B67D9A1C())
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 72) = 0;
    v3 = *(MEMORY[0x1E69E8708] + 4);
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AD98, &unk_1B68146A8);
    *v4 = v0;
    v4[1] = sub_1B6427034;
    v6 = *(v0 + 24);
    v7 = *(v0 + 32);
    v8 = *(v0 + 16);

    return MEMORY[0x1EEE6DAC8](v0 + 96, v8, v6, v5);
  }
}

uint64_t sub_1B641E120()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B6422E9C;

  return sub_1B641E248(v3, v4, v5, v2);
}

uint64_t sub_1B641E1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1B642553C;

  return sub_1B641EE54();
}

uint64_t sub_1B641E248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50) - 8) + 64) + 15;
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B641EBC4, 0, 0);
}

uint64_t sub_1B641E2E4()
{
  v1 = *(v0[7] + 24);
  v0[8] = v1;
  v0[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A738, &unk_1B68127D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B68100D0;

  *(v2 + 32) = *sub_1B6416A90();
  v0[5] = v2;
  sub_1B641A28C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A740, &qword_1B6814580);
  sub_1B6413CCC(&qword_1EDB1F028, &qword_1EB94A740, &qword_1B6814580);
  sub_1B67D9E5C();
  v0[6] = v0[4];
  v3 = swift_task_alloc();
  v0[9] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AD80, &qword_1B6814588);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AD88, &unk_1B6814590);
  v6 = sub_1B6413CCC(&qword_1EDB1FA08, &qword_1EB94AD80, &qword_1B6814588);
  *v3 = v0;
  v3[1] = sub_1B6426E44;

  return PrivateZoneType.query<A>(options:executor:)((v0 + 2), v0 + 6, sub_1B6426CA8, 0, v4, v5, v6);
}

BOOL sub_1B641E518(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

unint64_t sub_1B641E550()
{
  result = qword_1EDB1F9C0;
  if (!qword_1EDB1F9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F9C0);
  }

  return result;
}

unint64_t sub_1B641E5A4()
{
  result = qword_1EDB1F998;
  if (!qword_1EDB1F998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F998);
  }

  return result;
}

unint64_t sub_1B641E5FC()
{
  result = qword_1EDB1F9A0;
  if (!qword_1EDB1F9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F9A0);
  }

  return result;
}

void *sub_1B641E654(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v24 - v9;
  v11 = sub_1B67D877C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AD68, &qword_1B6814558);
  v13 = *(v12 + 52);
  v14 = (*(v12 + 48) + 3) & 0x1FFFFFFFCLL;
  v15 = swift_allocObject();
  *(v15 + ((*(*v15 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1B6404758(v10, v15 + *(*v15 + *MEMORY[0x1E69E6B68] + 16));
  v1[2] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AD70, &qword_1B6814560);
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  v17 = MEMORY[0x1E69E7CC0];
  *(v16 + 16) = MEMORY[0x1E69E7CC0];
  v1[4] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AD78, &qword_1B6814568);
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  *(v18 + 16) = v17;
  v1[5] = v18;
  v1[3] = a1;

  sub_1B67D991C();
  v19 = sub_1B67D993C();
  v20 = *(*(v19 - 8) + 56);
  v20(v6, 0, 1, v19);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v1;

  sub_1B6461304(0, 0, v6, &unk_1B68146E0, v21);

  v20(v6, 1, 1, v19);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v1;

  sub_1B644BCA8(0, 0, v6, &unk_1B68146F0, v22);

  return v1;
}

uint64_t sub_1B641E998()
{
  v1 = v0[2];
  v0[6] = swift_allocObject();
  swift_weakInit();
  v2 = *(MEMORY[0x1E69E88A0] + 4);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1B6425784;

  return MEMORY[0x1EEE6DD58]();
}

uint64_t sub_1B641EA90()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B641EAC8(uint64_t a1)
{
  if (!MEMORY[0x1E69E7D58])
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }

  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  type metadata accessor for PrivateZoneChange();
  sub_1B67D988C();
  type metadata accessor for Multicaster();
  return sub_1B67D8A3C();
}

uint64_t sub_1B641EB30(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = sub_1B67D989C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1B641DFE8, v4, v6);
}

uint64_t sub_1B641EBC4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v1 + 24);
  PrivateZone.modificationDate.getter();
  v4 = *(v1 + 16);
  *(swift_task_alloc() + 16) = v2;
  v5 = *(*v4 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v6));
  sub_1B6426B54(v4 + v5);
  v7 = v0[3];
  os_unfair_lock_unlock((v4 + v6));

  sub_1B6418AB4(v7, &unk_1EB94A100, &qword_1B680FD50);

  v8 = v0[1];

  return v8();
}

uint64_t PrivateZone.synchronize(options:)(uint64_t *a1)
{
  v2[8] = v1;
  v3 = *a1;
  v2[9] = *v1;
  v2[10] = v3;
  return MEMORY[0x1EEE6DFA0](sub_1B641F0E4, 0, 0);
}

unint64_t sub_1B641ED6C()
{
  result = qword_1EDB1F980;
  if (!qword_1EDB1F980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F980);
  }

  return result;
}

uint64_t sub_1B641EDC0()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B6422E9C;

  return sub_1B641E1B4(v3, v4, v5, v2);
}

uint64_t PrivateZone.modificationDate.getter()
{
  v1 = *v0;
  v2 = sub_1B641A1BC();
  v4 = v3;
  v10 = &v10;
  MEMORY[0x1EEE9AC00](v2);
  v6 = v1[10];
  v7 = v1[11];
  v8 = v1[12];
  v9 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  sub_1B641CFC8();
  return sub_1B641FC34(v2, v4);
}

uint64_t sub_1B641F0E4()
{
  v1 = v0[8];
  v2 = sub_1B641A1BC();
  v0[11] = v2;
  v0[12] = v3;
  v4 = v0[9];
  v5 = v2;
  v6 = v3;
  v7 = swift_task_alloc();
  v0[13] = v7;
  v8 = v4[10];
  v0[14] = v8;
  v9 = v4[11];
  v0[15] = v9;
  v10 = v4[12];
  v0[16] = v10;
  v11 = v4[13];
  v0[17] = v11;
  *v7 = v0;
  v7[1] = sub_1B6425304;

  return sub_1B64252D4(v5, v6, v8, v9, v10, v11);
}

void sub_1B641F3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t sub_1B641F490()
{
  result = qword_1EDB1E7D8;
  if (!qword_1EDB1E7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1E7D8);
  }

  return result;
}

id sub_1B641F4E4@<X0>(char *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a3;
  v32 = a4;
  v6 = *(*a2 + 80);
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v30 = &v29 - v8;
  v9 = sub_1B67D8A1C();
  v10 = sub_1B67D9DFC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v29 - v14;
  v16 = *(v9 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v19 = &v29 - v18;
  (*(v11 + 16))(v15, a1, v10);
  if ((*(v16 + 48))(v15, 1, v9) == 1)
  {
    v20 = *(v11 + 8);
    v20(a1, v10);
    v21 = v20(v15, v10);
    v22 = a2[2];
    v23 = a2[3];
    v24 = v30;
    v25 = v33;
    v22(v21);
    if (v25)
    {
      *a1 = v25;
      swift_storeEnumTagMultiPayload();
      (*(v16 + 56))(a1, 0, 1, v9);
      swift_willThrow();
      *v31 = v25;
      return v25;
    }

    else
    {
      v28 = v29;
      (*(v29 + 16))(a1, v24, v6);
      swift_storeEnumTagMultiPayload();
      (*(v16 + 56))(a1, 0, 1, v9);
      return (*(v28 + 32))(v32, v24, v6);
    }
  }

  else
  {
    (*(v16 + 32))(v19, v15, v9);
    v27 = v33;
    sub_1B67D8A0C();
    result = (*(v16 + 8))(v19, v9);
    if (v27)
    {
      *v31 = v27;
    }
  }

  return result;
}

uint64_t sub_1B641F880()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v15 = *(*(v14 - 8) + 56);
  v15(v13, 1, 1, v14);
  v15(v11, 1, 1, v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v36 = sub_1B67D8B3C();
  v15(v13, 1, 1, v14);
  v15(v11, 1, 1, v14);
  v22 = *(v16 + 48);
  v23 = *(v16 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v24 = *(v19 + 48);
  v25 = *(v19 + 52);
  swift_allocObject();
  sub_1B67D8B3C();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v27 = *(*(v26 - 8) + 56);
  v27(v6, 1, 1, v26);
  v27(v4, 1, 1, v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  sub_1B67D8B3C();
  return v36;
}

uint64_t sub_1B641FC34(uint64_t a1, unint64_t a2)
{
  if ((a2 >> 62) >= 2)
  {
    if (a2 >> 62 == 3)
    {
      return result;
    }
  }
}

uint64_t sub_1B641FC84(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B6422E9C;

  return sub_1B641633C(a1, v5);
}

uint64_t sub_1B641FD3C(uint64_t *a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B6422E9C;

  return PrivateZone.synchronize(options:)(a1);
}

uint64_t sub_1B641FDD4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_1B641FE38()
{
  result = qword_1EDB1F978;
  if (!qword_1EDB1F978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F978);
  }

  return result;
}

void sub_1B641FF80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6420044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t RecipeHistoryItem.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v65 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v63 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FB0, &unk_1B6810270);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v68 = &v63 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v63 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v21 = *(*(v20 - 8) + 56);
  v21(v19, 1, 1, v20);
  v21(v17, 1, 1, v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  *a1 = sub_1B67D8B3C();
  v21(v19, 1, 1, v20);
  v21(v17, 1, 1, v20);
  v28 = *(v22 + 48);
  v29 = *(v22 + 52);
  swift_allocObject();
  v30 = sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6B0, &qword_1B6812380);
  if (qword_1EDB24C00 != -1)
  {
    swift_once();
  }

  v31 = qword_1EDB20558;
  v32 = unk_1EDB20560;

  v33 = sub_1B6421E80();
  a1[1] = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v30, v31, v32, v33 & 1);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FB8, &qword_1B6810298);
  v35 = *(v34 - 8);
  v67 = a1;
  v36 = *(v35 + 56);
  v36(v68, 1, 1, v34);
  v36(v11, 1, 1, v34);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FC0, &qword_1B68102A0);
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  v40 = sub_1B67D8DBC();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B750, &unk_1B68182C8);
  if (qword_1EDB24C08 != -1)
  {
    swift_once();
  }

  v42 = qword_1EDB20568;
  v41 = unk_1EDB20570;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  sub_1B6416C84();
  v43 = sub_1B6421E80();
  v44 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v40, v42, v41, v43 & 1);
  v45 = v68;
  v67[2] = v44;
  v36(v45, 1, 1, v34);
  v36(v11, 1, 1, v34);
  v46 = *(v37 + 48);
  v47 = *(v37 + 52);
  swift_allocObject();
  v48 = sub_1B67D8DBC();
  if (qword_1EDB24C10 != -1)
  {
    swift_once();
  }

  v49 = qword_1EDB20578;
  v50 = unk_1EDB20580;

  v51 = sub_1B6421E80();
  v52 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v48, v49, v50, v51 & 1);
  v53 = v67;
  v67[3] = v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v55 = *(*(v54 - 8) + 56);
  v55(v64, 1, 1, v54);
  v55(v65, 1, 1, v54);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  v60 = *(v59 + 48);
  v61 = *(v59 + 52);
  swift_allocObject();
  result = sub_1B67D8B3C();
  v53[4] = result;
  return result;
}

uint64_t sub_1B6420AE4()
{
  result = sub_1B67D964C();
  qword_1EDB20558 = result;
  unk_1EDB20560 = v1;
  return result;
}

uint64_t sub_1B6420B14()
{
  result = sub_1B67D8A9C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B6420BD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B3E0, &qword_1B68165A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6420C48(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;

  v5 = *(v2 + 16);
  if (!v5)
  {
    v7 = MEMORY[0x1E69E7CC8];
LABEL_17:
    *a1 = v7;
    return result;
  }

  v6 = (v2 + 64);
  v7 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v39 = v6;
    v40 = v5;
    v13 = *(v6 - 4);
    v14 = *(v6 - 3);
    v16 = *(v6 - 2);
    v15 = *(v6 - 1);
    v17 = *v6;

    v18 = RecipeHistoryItem.recipeID.getter();
    v20 = v19;

    v41 = v14;

    v42 = v16;

    v43 = v15;

    v21 = v17;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = sub_1B6456E70(v18, v20);
    v25 = v7[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    v28 = v23;
    if (v7[3] >= v27)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v31 = v21;
        if (v23)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1B64ABF38();
        v31 = v21;
        if (v28)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1B64AC10C(v27, isUniquelyReferenced_nonNull_native);
      v29 = sub_1B6456E70(v18, v20);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_20;
      }

      v24 = v29;
      v31 = v21;
      if (v28)
      {
LABEL_3:

        v8 = (v7[7] + 40 * v24);
        v9 = *v8;
        v10 = v8[1];
        v11 = v8[2];
        v12 = v8[3];
        v38 = v8[4];
        *v8 = v13;
        v8[1] = v41;
        v8[2] = v42;
        v8[3] = v43;
        v8[4] = v31;

        goto LABEL_4;
      }
    }

    v7[(v24 >> 6) + 8] |= 1 << v24;
    v32 = (v7[6] + 16 * v24);
    *v32 = v18;
    v32[1] = v20;
    v33 = (v7[7] + 40 * v24);
    *v33 = v13;
    v33[1] = v41;
    v33[2] = v42;
    v33[3] = v43;
    v33[4] = v31;

    v34 = v7[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_19;
    }

    v7[2] = v36;
LABEL_4:
    v6 = v39 + 5;
    v5 = v40 - 1;
    if (v40 == 1)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1B67DA34C();
  __break(1u);
  return result;
}

uint64_t UserEventHistorySessionEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FD8, &unk_1B6811440);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v69 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v68 = &v65 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5C8, &unk_1B6811420);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v67 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v66 = &v65 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v70 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v65 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v65 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v26 = *(*(v25 - 8) + 56);
  v26(v24, 1, 1, v25);
  v26(v22, 1, 1, v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  *a1 = sub_1B67D8B3C();
  v26(v24, 1, 1, v25);
  v26(v22, 1, 1, v25);
  v33 = *(v27 + 48);
  v34 = *(v27 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v35 = *(v30 + 48);
  v36 = *(v30 + 52);
  swift_allocObject();
  a1[1] = sub_1B67D8B3C();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v38 = *(*(v37 - 8) + 56);
  v65 = v17;
  v38(v17, 1, 1, v37);
  v38(v70, 1, 1, v37);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  v42 = sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B8, &unk_1B6812390);
  sub_1B67D877C();
  sub_1B6421ED0();
  v43 = sub_1B6421E80();
  a1[2] = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v42, 0x446E6F6973736573, 0xEB00000000657461, v43 & 1);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D0, &qword_1B6813E20);
  v45 = *(*(v44 - 8) + 56);
  v45(v66, 1, 1, v44);
  v45(v67, 1, 1, v44);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D8, &unk_1B6811430);
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  v49 = sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5C0, &qword_1B6811418);
  sub_1B64216F8();
  v50 = sub_1B6421E80();
  a1[3] = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v49, 0x446E6F6973736573, 0xEB00000000617461, v50 & 1);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A000, &unk_1B68102F0);
  v52 = *(*(v51 - 8) + 56);
  v52(v68, 1, 1, v51);
  v52(v69, 1, 1, v51);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A008, &unk_1B6811450);
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A010, &unk_1B6810300);
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();
  a1[4] = sub_1B67D8B3C();
  v38(v65, 1, 1, v37);
  v38(v70, 1, 1, v37);
  v59 = *(v39 + 48);
  v60 = *(v39 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  v62 = *(v61 + 48);
  v63 = *(v61 + 52);
  swift_allocObject();
  result = sub_1B67D8B3C();
  a1[5] = result;
  return result;
}

unint64_t sub_1B64216F8()
{
  result = qword_1EDB1FA48;
  if (!qword_1EDB1FA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1FA48);
  }

  return result;
}

unint64_t sub_1B6421D54()
{
  result = qword_1EDB1E800;
  if (!qword_1EDB1E800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1E800);
  }

  return result;
}

unint64_t sub_1B6421DA8()
{
  result = qword_1EDB1E7F8;
  if (!qword_1EDB1E7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1E7F8);
  }

  return result;
}

uint64_t CKColumn.__allocating_init(wrappedValue:name:encrypted:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = swift_allocObject();
  *(v8 + 24) = a3;
  *(v8 + 32) = a1;
  *(v8 + 16) = a2;
  *(v8 + 40) = a4;

  *(v8 + 41) = (sub_1B67D8DAC() & 1) == 0;

  return v8;
}

uint64_t sub_1B6421E88()
{
  result = sub_1B67D964C();
  qword_1EDB20568 = result;
  unk_1EDB20570 = v1;
  return result;
}

unint64_t sub_1B6421ED0()
{
  result = qword_1EDB1FA40;
  if (!qword_1EDB1FA40)
  {
    sub_1B67D877C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1FA40);
  }

  return result;
}

uint64_t sub_1B6421F28()
{
  result = sub_1B67D964C();
  qword_1EDB20578 = result;
  unk_1EDB20580 = v1;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B6421F6C()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *v0;
  sub_1B67D8B6C();
  CKColumn.projectedValue.getter();
  CKColumn.projectedValue.getter();
  CKColumn.projectedValue.getter();
  sub_1B67D8B6C();
  v6 = sub_1B67D8B8C();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  return sub_1B67D8BCC();
}

uint64_t CKColumn.projectedValue.getter()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  sub_1B67D8B7C();
  v3 = v0[2];
  v6 = v0 + 3;
  v4 = v0[3];
  v5 = v6[1];

  return sub_1B67D8B2C();
}

uint64_t sub_1B64220B0@<X0>(uint64_t *a1@<X8>)
{
  v83 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FB0, &unk_1B6810270);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v82 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v81 = &v78 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FD8, &unk_1B6811440);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v78 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B840, &qword_1B68191C0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v78 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v78 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v28 = *(*(v27 - 8) + 56);
  v28(v26, 1, 1, v27);
  v28(v24, 1, 1, v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v80 = sub_1B67D8B3C();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B848, &qword_1B68191C8);
  v36 = *(*(v35 - 8) + 56);
  v36(v19, 1, 1, v35);
  v36(v17, 1, 1, v35);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B850, &qword_1B68191D0);
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();

  sub_1B67D8DBC();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B858, &qword_1B68191D8);
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  v79 = sub_1B67D8B3C();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A000, &unk_1B68102F0);
  v44 = *(*(v43 - 8) + 56);
  v44(v12, 1, 1, v43);
  v44(v10, 1, 1, v43);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A008, &unk_1B6811450);
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();

  sub_1B67D8DBC();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A010, &unk_1B6810300);
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  v78 = sub_1B67D8B3C();
  v44(v12, 1, 1, v43);
  v44(v10, 1, 1, v43);
  v51 = *(v45 + 48);
  v52 = *(v45 + 52);
  swift_allocObject();

  sub_1B67D8DBC();
  v53 = *(v48 + 48);
  v54 = *(v48 + 52);
  swift_allocObject();
  v55 = sub_1B67D8B3C();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FB8, &qword_1B6810298);
  v57 = *(*(v56 - 8) + 56);
  v58 = v81;
  v57(v81, 1, 1, v56);
  v59 = v82;
  v57(v82, 1, 1, v56);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FC0, &qword_1B68102A0);
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  swift_allocObject();

  sub_1B67D8DBC();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FC8, &qword_1B68102A8);
  v64 = *(v63 + 48);
  v65 = *(v63 + 52);
  swift_allocObject();
  v66 = sub_1B67D8B3C();
  v57(v58, 1, 1, v56);
  v57(v59, 1, 1, v56);
  v67 = *(v60 + 48);
  v68 = *(v60 + 52);
  swift_allocObject();

  sub_1B67D8DBC();
  v69 = *(v63 + 48);
  v70 = *(v63 + 52);
  swift_allocObject();
  v71 = sub_1B67D8B3C();

  v72 = v80;
  sub_1B67D8B4C();
  v84 = xmmword_1B68100F0;
  sub_1B67D8DDC();

  v73 = v78;
  sub_1B67D8B4C();
  *&v84 = 0;
  BYTE8(v84) = 0;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  *&v84 = 0;
  BYTE8(v84) = 0;
  sub_1B67D8DDC();

  v74 = v73;

  v75 = v79;

  v77 = v83;
  *v83 = v72;
  v77[1] = v75;
  v77[2] = v74;
  v77[3] = v55;
  v77[4] = v66;
  v77[5] = v71;
  return result;
}

uint64_t sub_1B64228FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v39 = a1;
  v38 = a3;
  v33 = a4;
  v34 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v32 - v6);
  v8 = sub_1B67D877C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B67D8B1C();
  v36 = *(v13 - 8);
  v37 = v13;
  v14 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v35 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B67D8E4C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_1B6422D98();
  v23 = *v21;
  v22 = v21[1];
  if (v38)
  {
    *v20 = v23;
    v20[1] = v22;
    (*(v17 + 104))(v20, *MEMORY[0x1E69D6220], v16);

    v24 = v40;
    v25 = sub_1B67D8CFC();
    if (v24)
    {
      return (*(v17 + 8))(v20, v16);
    }

    v31 = v25;
    result = (*(v17 + 8))(v20, v16);
  }

  else
  {
    v27 = v21[1];

    sub_1B67D876C();
    v41[3] = v8;
    v41[4] = MEMORY[0x1E69D6130];
    __swift_allocate_boxed_opaque_existential_0(v41);
    sub_1B67D870C();
    (*(v9 + 8))(v12, v8);
    v28 = v35;
    sub_1B67D8C9C();
    __swift_destroy_boxed_opaque_existential_1(v41);
    *v7 = v23;
    v7[1] = v22;
    (*(v17 + 104))(v7, *MEMORY[0x1E69D6220], v16);
    (*(v17 + 56))(v7, 0, 1, v16);
    v29 = v40;
    v30 = sub_1B67D8D2C();
    if (v29)
    {
      sub_1B6418AB4(v7, &qword_1EB94B510, &unk_1B68102C0);
      return (*(v36 + 8))(v28, v37);
    }

    v31 = v30;
    sub_1B6418AB4(v7, &qword_1EB94B510, &unk_1B68102C0);
    result = (*(v36 + 8))(v28, v37);
  }

  *v33 = v31;
  return result;
}

uint64_t sub_1B6422D30()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  sub_1B67D8D5C();
  v2();
}

uint64_t *sub_1B6422D98()
{
  if (qword_1EDB24C08 != -1)
  {
    swift_once();
  }

  return &qword_1EDB20568;
}

uint64_t sub_1B6422DE8()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[3];
  (*(v0[8] + 40))(v0[4], v0[5], v0[7], v0[6]);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1B6422EA0()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1B64A70DC;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1B641FDD4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B6422FE4()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = *v0;
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  CKColumn.projectedValue.getter();
  CKColumn.projectedValue.getter();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  v7 = sub_1B67D8B8C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  return sub_1B67D8BBC();
}

unint64_t sub_1B6423DD8(uint64_t a1)
{
  *(a1 + 8) = sub_1B64176BC();
  result = sub_1B641E5FC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B6423E0C()
{
  result = qword_1EDB1F988;
  if (!qword_1EDB1F988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F988);
  }

  return result;
}

uint64_t sub_1B6423E64()
{
  v1 = *(v0 + 72);
  if (v1 < 0)
  {
    v6 = *(MEMORY[0x1E69E86A8] + 4);
    v7 = swift_task_alloc();
    *(v0 + 112) = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B940, "0;");
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B920, &qword_1B6811070);
    *v7 = v0;
    v7[1] = sub_1B64B6D58;
    v10 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v0 + 48, v1 & 0x3FFFFFFFFFFFFFFFLL, v8, v9, v10);
  }

  else
  {
    v2 = *(v0 + 96);
    *(v0 + 16) = *(v0 + 80);
    *(v0 + 32) = v2;
    _s11AccessModelO6ErrorsOMa();
    swift_getWitnessTable();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1B6423FE0()
{
  sub_1B641FC34(v0[11], v0[12]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1B6424044(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B6424084()
{
  if (*(v0 + 97))
  {
    v1 = *(v0 + 64);
    v2 = *(v0 + 72);
    v3 = *(v0 + 56);
    if (sub_1B67D9A1C())
    {
      if (v2)
      {
        swift_willThrow();
      }

      v4 = *(v0 + 8);

      return v4();
    }

    *(v0 + 72) = v2;
  }

  v6 = *(MEMORY[0x1E69E8708] + 4);
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AD98, &unk_1B68146A8);
  *v7 = v0;
  v7[1] = sub_1B6427034;
  v9 = *(v0 + 24);
  v10 = *(v0 + 32);
  v11 = *(v0 + 16);

  return MEMORY[0x1EEE6DAC8](v0 + 96, v11, v9, v8);
}

__CFString *FCDefaultNotificationsBaseURLStringForEnvironment(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7C473B0[a1 - 1];
  }
}

uint64_t RecipeBoxItem.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v46 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v17 = *(*(v16 - 8) + 56);
  v17(v15, 1, 1, v16);
  v17(v13, 1, 1, v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  *a1 = sub_1B67D8B3C();
  v17(v15, 1, 1, v16);
  v17(v13, 1, 1, v16);
  v24 = *(v18 + 48);
  v25 = *(v18 + 52);
  swift_allocObject();
  v26 = sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6B0, &qword_1B6812380);
  if (qword_1EDB25A10 != -1)
  {
    swift_once();
  }

  v27 = qword_1EDB20598;
  v28 = unk_1EDB205A0;

  v29 = sub_1B6421E80();
  a1[1] = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v26, v27, v28, v29 & 1);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v31 = *(*(v30 - 8) + 56);
  v48 = a1;
  v31(v8, 1, 1, v30);
  v31(v6, 1, 1, v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v49 = sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B8, &unk_1B6812390);
  v47 = v6;
  if (qword_1EDB25A08 != -1)
  {
    swift_once();
  }

  v35 = qword_1EDB20588;
  v36 = unk_1EDB20590;
  sub_1B67D877C();
  sub_1B6421ED0();

  v37 = sub_1B6421E80();
  v38 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v49, v35, v36, v37 & 1);
  v39 = v48;
  v48[2] = v38;
  v31(v8, 1, 1, v30);
  v31(v47, 1, 1, v30);
  v40 = *(v32 + 48);
  v41 = *(v32 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  result = sub_1B67D8B3C();
  v39[3] = result;
  return result;
}

uint64_t sub_1B6424BE0()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = *v0;
  sub_1B67D8B6C();
  CKColumn.projectedValue.getter();
  CKColumn.projectedValue.getter();
  sub_1B67D8B6C();
  v5 = sub_1B67D8B8C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  return sub_1B67D8BDC();
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void __Block_byref_object_dispose__36(uint64_t a1)
{
}

{
}

void sub_1B64251D4(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = (v1 + *(*v1 + 96));
  os_unfair_lock_lock(v4);
  v5 = *(v3 + 80);
  sub_1B67D8A1C();
  sub_1B67D9DFC();
  v6 = sub_1B67D8A3C();
  sub_1B641F4E4(v4 + *(v6 + 28), v1, &v7, a1);
  os_unfair_lock_unlock(v4);
}

uint64_t sub_1B64252A4()
{
  result = sub_1B67D964C();
  qword_1EDB20588 = result;
  unk_1EDB20590 = v1;
  return result;
}

uint64_t sub_1B64252D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[9] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B6423E64, 0, 0);
}

uint64_t sub_1B6425304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v4;
  v8 = *(*v4 + 104);
  v9 = *v4;
  v7[18] = a1;
  v7[19] = v3;

  if (v3)
  {

    v10 = sub_1B6423FE0;
  }

  else
  {
    v7[20] = a3;
    v7[21] = a2;
    v10 = sub_1B64EC5C0;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

void sub_1B6425458()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = *(v0[2] + 40);
  *(swift_task_alloc() + 16) = v1;
  os_unfair_lock_lock((v3 + 24));
  sub_1B6424CA4((v3 + 16));
  if (v2)
  {

    os_unfair_lock_unlock((v3 + 24));
  }

  else
  {
    v4 = v0[4];
    os_unfair_lock_unlock((v3 + 24));

    v5 = v0[1];

    v5();
  }
}

uint64_t sub_1B642553C(uint64_t a1)
{
  v3 = *(*v2 + 24);
  v4 = *v2;
  v4[4] = a1;
  v4[5] = v1;

  if (v1)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B6425458, 0, 0);
  }
}

uint64_t sub_1B6425670()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1B649D764;
  }

  else
  {
    v3 = sub_1B6427150;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B6425784()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1B649BA68;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1B641FDD4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B64258A0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

__CFString *FCDefaultNewsletterAPIBaseURLStringForEnvironment(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7C47350[a1 - 1];
  }
}

uint64_t FCHigherQualityOfService(uint64_t result, uint64_t a2)
{
  v2 = -1;
  v3 = 2;
  v4 = 3;
  v5 = 4;
  if (result != 33)
  {
    v5 = -1;
  }

  if (result != 25)
  {
    v4 = v5;
  }

  if (result != 17)
  {
    v3 = v4;
  }

  if (result == 9)
  {
    v2 = 1;
  }

  if (result == -1)
  {
    v2 = 0;
  }

  if (result > 16)
  {
    v2 = v3;
  }

  v6 = -1;
  v7 = 2;
  v8 = 3;
  v9 = 4;
  if (a2 != 33)
  {
    v9 = -1;
  }

  if (a2 != 25)
  {
    v8 = v9;
  }

  if (a2 != 17)
  {
    v7 = v8;
  }

  if (a2 == 9)
  {
    v6 = 1;
  }

  if (a2 == -1)
  {
    v6 = 0;
  }

  if (a2 > 16)
  {
    v6 = v7;
  }

  if (v2 <= v6)
  {
    return a2;
  }

  return result;
}

void FCDispatchAsyncWithQualityOfService(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = FCBlockWithQualityOfService(a2, a3);
  dispatch_async(v5, v6);
}

uint64_t FCProcessIsMemoryConstrained()
{
  if (qword_1EDB26E78 != -1)
  {
    dispatch_once(&qword_1EDB26E78, &__block_literal_global_4);
  }

  return _MergedGlobals_129;
}

void __FCProcessIsMemoryConstrained_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];

  _MergedGlobals_129 = [&unk_1F2E6F648 containsObject:v1];
}

uint64_t FCHeadlineProviding.newsArticleURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1B67D85FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v2 articleID];
  if (!v9)
  {
    sub_1B67D964C();
    v9 = sub_1B67D963C();
  }

  v10 = [v2 routeURL];
  if (v10)
  {
    v11 = v10;
    sub_1B67D85AC();

    v12 = sub_1B67D858C();
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_opt_self() fc:v9 NewsURLForArticleID:v12 routeURL:?];

  if (v13)
  {
    sub_1B67D85AC();

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  return (*(v5 + 56))(a1, v14, 1, v4);
}

uint64_t sub_1B642670C()
{
  result = sub_1B67D964C();
  qword_1EDB20598 = result;
  unk_1EDB205A0 = v1;
  return result;
}

uint64_t sub_1B642673C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B67D8E4C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B67D8D5C();
  *v7 = 0x6465696669646F6DLL;
  v7[1] = 0xEA00000000007441;
  (*(v4 + 104))(v7, *MEMORY[0x1E69D6220], v3);
  sub_1B67D8D0C();
  if (v1)
  {
    (*(v4 + 8))(v7, v3);
  }

  else
  {
    (*(v4 + 8))(v7, v3);

    if (v10[1])
    {
      sub_1B65064A4();

      sub_1B67D8DCC();
    }

    else
    {
      v9 = sub_1B67D877C();
      return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
    }
  }
}

uint64_t sub_1B642694C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1B6426A40()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1B6493260;
  }

  else
  {
    v3 = sub_1B6422DE8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B6426B54(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1B6418AB4(a1, &unk_1EB94A100, &qword_1B680FD50);
  return sub_1B6415FF0(v3, a1, &unk_1EB94A100, &qword_1B680FD50);
}

uint64_t sub_1B6426BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 8) + 8);

  v5 = sub_1B67D8F3C();
  if (v3)
  {
  }

  v6 = v5;
  sub_1B641A49C();
  sub_1B67D8F3C();
  sub_1B641A78C();
  sub_1B67D8F3C();

  return v6;
}

uint64_t sub_1B6426CA8@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1B67D8E4C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1B6426DF4();
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  (*(v4 + 104))(v7, *MEMORY[0x1E69D6220], v3);

  v10 = sub_1B67D8CFC();
  if (v1)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v12 = v10;
  result = (*(v4 + 8))(v7, v3);
  *a1 = v12;
  return result;
}

uint64_t *sub_1B6426DF4()
{
  if (qword_1EDB25A08 != -1)
  {
    swift_once();
  }

  return &qword_1EDB20588;
}

uint64_t sub_1B6426E44()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  v4 = *(v2 + 64);

  if (v0)
  {
    v5 = sub_1B649BC10;
  }

  else
  {
    v5 = sub_1B6426F68;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1B6426F68()
{
  v1 = v0[10];
  v2 = v0[2];
  v3 = *(v0[7] + 40);
  *(swift_task_alloc() + 16) = v2;
  os_unfair_lock_lock((v3 + 24));
  sub_1B6425440((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
  if (!v1)
  {

    v4 = v0[1];

    v4(v2);
  }
}

uint64_t sub_1B6427034()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = *(v2 + 48);
    v6 = sub_1B649D7D0;
  }

  else
  {
    *(v2 + 97) = *(v2 + 96);
    v4 = *(v2 + 40);
    v5 = *(v2 + 48);
    v6 = sub_1B6424084;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1B6427150()
{
  v1 = v0[8];

  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t PrivateZone.query<A>(executor:)()
{
  v2 = *v0;
  result = sub_1B641A1BC();
  if (!v1)
  {
    v4 = MEMORY[0x1EEE9AC00](result);
    v9 = v2[10];
    v10 = v2[11];
    v11 = v2[12];
    v8 = v2[13];
    v5 = v4;
    v7 = v6;
    sub_1B641CFC8();
    return sub_1B641FC34(v5, v7);
  }

  return result;
}

uint64_t FCAppConfigurationIntegerValueWithDefaultValueIfMissing(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = [a1 objectForKeyedSubscript:a2];
    if (v5)
    {
      v6 = [MEMORY[0x1E695DFB0] null];

      if (v5 != v6)
      {
        a4 = [v5 longLongValue];
      }
    }

    return a4;
  }

  return a3;
}

uint64_t __FCKeyValueStoreMaxBufferSize_block_invoke()
{
  result = FCProcessIsMemoryConstrained();
  v1 = 3000000;
  if (result)
  {
    v1 = 1024;
  }

  qword_1EDB277A8 = v1;
  return result;
}

double FCThumbnailAspectRatioForHeadline(void *a1)
{
  v1 = a1;
  v2 = [v1 thumbnailUltraHQ];

  if (v2)
  {
    v3 = [v1 thumbnailUltraHQ];
LABEL_11:
    v8 = v3;
    [v3 thumbnailSize];
    v10 = v9;
    v12 = v11;

    goto LABEL_12;
  }

  v4 = [v1 thumbnailHQ];

  if (v4)
  {
    v3 = [v1 thumbnailHQ];
    goto LABEL_11;
  }

  v5 = [v1 thumbnailMedium];

  if (v5)
  {
    v3 = [v1 thumbnailMedium];
    goto LABEL_11;
  }

  v6 = [v1 thumbnail];

  if (v6)
  {
    v3 = [v1 thumbnail];
    goto LABEL_11;
  }

  v7 = [v1 thumbnailLQ];

  if (v7)
  {
    v3 = [v1 thumbnailLQ];
    goto LABEL_11;
  }

  v10 = *MEMORY[0x1E695F060];
  v12 = *(MEMORY[0x1E695F060] + 8);
LABEL_12:
  if (v12 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v10 / v12;
  }

  return v13;
}

void sub_1B6428964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B642A0B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B642A1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B642A28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B642A378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B642A528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B642A72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B642A8F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B642AC1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B642B1EC()
{
  v1 = *(*v0 + 32);
  os_unfair_lock_lock((v1 + 24));
  sub_1B64A023C((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

__CFString *FCStringFromQualityOfService(uint64_t a1)
{
  v1 = @"UserInteractive";
  v2 = @"Utility";
  v3 = @"UserInitiated";
  if (a1 != 25)
  {
    v3 = @"UserInteractive";
  }

  if (a1 != 17)
  {
    v2 = v3;
  }

  if (a1 == 9)
  {
    v1 = @"Background";
  }

  if (a1 == -1)
  {
    v1 = @"Default";
  }

  if (a1 <= 16)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

__CFString *FCStringFromQueuePriority(uint64_t a1)
{
  v1 = __ROR8__(a1 + 8, 2) - 1;
  if (v1 > 3)
  {
    return @"VeryLow";
  }

  else
  {
    return off_1E7C42A30[v1];
  }
}

void sub_1B642DCF4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 240));
  _Unwind_Resume(a1);
}

uint64_t sub_1B642DEE8(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for RecipeBoxObserverProxy();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 24) = a3;
  v6 = swift_unknownObjectWeakAssign();
  MEMORY[0x1B8C949F0](v6);
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v8 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1B67D97FC();
  }

  return sub_1B67D983C();
}

uint64_t sub_1B642E0AC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t lazily<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a1;
  v8[4] = a2;

  return AsyncLazy.init(_:)(&unk_1B6811068, v8, a3, a4);
}

uint64_t sub_1B642E17C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t AsyncLazy.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_1B67D9DFC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - v11;
  v15[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB94B920, &qword_1B6811070);
  sub_1B67D99EC();
  sub_1B67D9DFC();
  a4[2] = sub_1B642E32C();
  (*(*(a3 - 8) + 56))(v12, 1, 1, a3);
  v13 = sub_1B642E32C();
  result = (*(v9 + 8))(v12, v8);
  a4[3] = v13;
  *a4 = a1;
  a4[1] = a2;
  return result;
}

uint64_t sub_1B642E32C()
{
  type metadata accessor for os_unfair_lock_s();
  sub_1B67D9F5C();
  return sub_1B67D9F4C();
}

uint64_t sub_1B642E3A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

uint64_t sub_1B642E6D4(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B63F3DA0(0, &unk_1EDB1FC78, off_1E7C345C8);
  result = sub_1B67D88CC();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_1B642E738()
{
  v0 = sub_1B67D85FC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00]();
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = FCURLForAppConfigurationMirror();
  if (result)
  {
    v6 = result;
    sub_1B67D85AC();

    v7 = [objc_opt_self() sharedAccount];
    v8 = [v7 supportedContentStoreFrontID];

    if (!v8)
    {
      sub_1B67D964C();
      v8 = sub_1B67D963C();
    }

    v9 = objc_allocWithZone(FCFileCoordinatedAppConfigurationManager);
    v10 = sub_1B67D858C();
    v11 = [v9 initWithFileURL:v10 storefrontID:v8];

    (*(v1 + 8))(v4, v0);
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id FCURLForAppConfigurationMirror()
{
  v0 = FCBaseURLForSharedPrivateData();
  v1 = [v0 URLByAppendingPathComponent:@"appConfigurationMirror" isDirectory:0];

  return v1;
}

void sub_1B642EC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B642ED2C(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B000, &qword_1B6814EF0);
  result = sub_1B67D88BC();
  if (result)
  {
    v4 = result;
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    result = sub_1B67D88BC();
    if (result)
    {
      v6 = [objc_allocWithZone(FCESLInventory) initWithGlobalInventory:v4 tagInventory:result];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1B642EE3C(void *a1)
{
  v53[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1B67D856C();
  v51 = *(v2 - 8);
  v52 = v2;
  v3 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BB50, &qword_1B6814FD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v48 - v8;
  v10 = sub_1B67D85FC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v48 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0F0, &unk_1B6814FA0);
  v19 = sub_1B67D88CC();
  if (!v19)
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v20 = [v19 contentDirectory];
  sub_1B67D964C();

  v49 = v11;
  v50 = v10;
  (*(v11 + 56))(v9, 1, 1, v10);
  (*(v51 + 104))(v5, *MEMORY[0x1E6968F70], v52);
  sub_1B67D85CC();
  sub_1B67D859C();
  v21 = NewsCoreUserDefaults();
  v22 = [v21 BOOLForKey_];

  v23 = v15;
  if (v22)
  {
    v24 = [objc_opt_self() defaultManager];
    v25 = sub_1B67D858C();
    v53[0] = 0;
    v26 = [v24 removeItemAtURL:v25 error:v53];

    if (v26)
    {
      v27 = v53[0];
    }

    else
    {
      v28 = v53[0];
      v29 = sub_1B67D855C();

      swift_willThrow();
    }

    v30 = NewsCoreUserDefaults();
    [v30 setBool:0 forKey:@"news.esl_inventory.clear_global_next_launch"];
  }

  v52 = v17;
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for GlobalESLService();
  v32 = sub_1B67D88CC();
  if (!v32)
  {
    goto LABEL_11;
  }

  v33 = v32;
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B138, &qword_1B6814FF0);
  v35 = sub_1B67D88CC();
  v36 = v49;
  v37 = v50;
  if (!v35)
  {
    goto LABEL_12;
  }

  v38 = v35;
  v39 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B63F3DA0(0, &qword_1EDB1E558, off_1E7C350A0);
  v40 = sub_1B67D88CC();
  v41 = objc_allocWithZone(FCFeedItemInventory);
  v42 = sub_1B67D858C();
  v43 = sub_1B67D963C();
  v44 = [v41 initWithFeedItemService:v33 feedPersonalizer:v38 readingHistory:v40 fileURL:v42 version:1 refreshInterval:v43 loggingKey:86400.0];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v45 = *(v36 + 8);
  v45(v23, v37);
  v45(v52, v37);
  v46 = *MEMORY[0x1E69E9840];
  return v44;
}