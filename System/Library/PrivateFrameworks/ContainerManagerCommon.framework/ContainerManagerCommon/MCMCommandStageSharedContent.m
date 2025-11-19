@interface MCMCommandStageSharedContent
+ (Class)incomingMessageClass;
+ (unint64_t)command;
- (BOOL)preflightClientAllowed;
- (MCMCommandStageSharedContent)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5;
- (NSString)destinationRelativePath;
- (NSString)identifier;
- (NSString)sourceRelativePath;
- (void)execute;
@end

@implementation MCMCommandStageSharedContent

- (NSString)destinationRelativePath
{
  result = self->_destinationRelativePath;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)sourceRelativePath
{
  result = self->_sourceRelativePath;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)identifier
{
  result = self->_identifier;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)execute
{
  v100 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v3 = [(MCMCommand *)self context];
  v4 = [v3 userIdentityCache];
  v5 = [v4 defaultUserIdentity];

  v91 = 1;
  v6 = [(MCMCommand *)self context];
  v7 = [v6 globalConfiguration];
  v8 = [v7 staticConfig];
  v9 = [v8 configForContainerClass:13];

  v10 = [(MCMCommandStageSharedContent *)self identifier];
  v11 = [(MCMCommand *)self context];
  v12 = [v11 userIdentityCache];
  v86 = v5;
  v13 = [MCMContainerIdentity containerIdentityWithUserIdentity:v5 identifier:v10 containerConfig:v9 platform:0 userIdentityCache:v12 error:&v91];

  if (!v13)
  {
    v17 = [MCMError alloc];
    v18 = [(MCMError *)v17 initWithErrorType:v91];
LABEL_12:
    v22 = 0;
    v23 = 0;
    v85 = 0;
LABEL_13:
    v24 = 0;
    v25 = 0;
    v84 = 0;
LABEL_14:
    v26 = 0;
    goto LABEL_15;
  }

  v14 = containermanager_copy_global_configuration();
  v15 = [v14 systemContainerMode];

  if (!v15)
  {
    v18 = [[MCMError alloc] initWithErrorType:72];
    v19 = container_log_handle_for_category();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_ERROR, "System containers are not supported", buf, 2u);
    }

    goto LABEL_11;
  }

  v16 = [(MCMCommandStageSharedContent *)self sourceRelativePath];
  if ([v16 containsDotDotPathComponents])
  {

    goto LABEL_9;
  }

  v20 = [(MCMCommandStageSharedContent *)self destinationRelativePath];
  v21 = [v20 containsDotDotPathComponents];

  if (v21)
  {
LABEL_9:
    v18 = [[MCMError alloc] initWithErrorType:38];
    v19 = container_log_handle_for_category();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v65 = [(MCMCommandStageSharedContent *)self sourceRelativePath];
      v66 = [(MCMCommandStageSharedContent *)self destinationRelativePath];
      *buf = 138412546;
      v93 = v65;
      v94 = 2112;
      v95 = v66;
      _os_log_error_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_ERROR, "Paths can't contain dots. source: %@, dest: %@", buf, 0x16u);
    }

LABEL_11:

    goto LABEL_12;
  }

  v33 = [(MCMCommand *)self context];
  v34 = [v33 clientIdentity];
  v35 = [v34 codeSignInfo];
  v36 = [v35 entitlements];
  v37 = [v36 systemGroupIdentifiers];

  v38 = [v13 identifier];
  v85 = v37;
  LOBYTE(v34) = [v37 containsObject:v38];

  if ((v34 & 1) == 0)
  {
    v18 = +[MCMError notEntitled];
    v63 = container_log_handle_for_category();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      v74 = [(MCMCommand *)self context];
      v75 = [v74 clientIdentity];
      v76 = [v13 identifier];
      *buf = 138412546;
      v93 = v75;
      v94 = 2112;
      v95 = v76;
      _os_log_error_impl(&dword_1DF2C3000, v63, OS_LOG_TYPE_ERROR, "%@ not entitled for system group container %@", buf, 0x16u);
    }

    v22 = 0;
    v23 = 0;
    goto LABEL_13;
  }

  v39 = [(MCMCommand *)self context];
  v40 = [v39 containerCache];
  v90 = 0;
  v41 = [v40 entryForContainerIdentity:v13 error:&v90];
  v42 = v90;

  v84 = v41;
  v43 = [v41 metadataMinimal];
  if (!v43)
  {
    v18 = [[MCMError alloc] initWithErrorType:21];

    v64 = container_log_handle_for_category();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      v77 = [v13 identifier];
      *buf = 138412546;
      v93 = v77;
      v94 = 2112;
      v95 = v18;
      _os_log_error_impl(&dword_1DF2C3000, v64, OS_LOG_TYPE_ERROR, "System group container with identifier %@ not found: %@", buf, 0x16u);
    }

    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    goto LABEL_14;
  }

  v25 = v43;
  v81 = v42;
  v44 = [v43 containerPath];
  v45 = [v44 containerDataURL];
  v46 = [(MCMCommandStageSharedContent *)self sourceRelativePath];
  v23 = [v45 URLByAppendingPathComponent:v46 isDirectory:0];

  v47 = [v25 containerPath];
  v48 = [v47 containerDataURL];
  v49 = [(MCMCommandStageSharedContent *)self destinationRelativePath];
  v22 = [v48 URLByAppendingPathComponent:v49 isDirectory:0];

  v50 = +[MCMFileManager defaultManager];
  v51 = [v25 containerPath];
  v52 = [v51 containerDataURL];
  v53 = [v50 realPathForURL:v23 ifChildOfURL:v52];

  if (!v53)
  {
    v18 = [[MCMError alloc] initWithErrorType:10];

    v67 = container_log_handle_for_category();
    if (!os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
LABEL_37:

      v24 = 0;
      goto LABEL_14;
    }

    v68 = [v13 identifier];
    v82 = [v25 containerPath];
    v69 = [v82 containerDataURL];
    *buf = 138412802;
    v93 = v23;
    v94 = 2112;
    v95 = v68;
    v96 = 2112;
    v97 = v69;
    v70 = "Invalid source URL %@ for %@ at %@";
LABEL_43:
    _os_log_error_impl(&dword_1DF2C3000, v67, OS_LOG_TYPE_ERROR, v70, buf, 0x20u);

    goto LABEL_37;
  }

  v54 = +[MCMFileManager defaultManager];
  v55 = [v25 containerPath];
  v56 = [v55 containerDataURL];
  v57 = [v54 realPathForURL:v22 ifChildOfURL:v56];

  if (!v57)
  {
    v18 = [[MCMError alloc] initWithErrorType:10];

    v67 = container_log_handle_for_category();
    if (!os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    v68 = [v13 identifier];
    v82 = [v25 containerPath];
    v69 = [v82 containerDataURL];
    *buf = 138412802;
    v93 = v22;
    v94 = 2112;
    v95 = v68;
    v96 = 2112;
    v97 = v69;
    v70 = "Invalid dest URL %@ for %@ at %@";
    goto LABEL_43;
  }

  v58 = +[MCMFileManager defaultManager];
  v89 = 0;
  v59 = [v58 standardizeACLsAtURL:v23 isSystemContainer:0 error:&v89];
  v26 = v89;

  if ((v59 & 1) == 0)
  {
    v18 = [[MCMError alloc] initWithErrorType:63];

    v71 = container_log_handle_for_category();
    if (!os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    v83 = [v13 identifier];
    v72 = [v23 path];
    *buf = 138412802;
    v93 = v83;
    v94 = 2112;
    v95 = v72;
    v73 = v72;
    v96 = 2112;
    v97 = v26;
    _os_log_error_impl(&dword_1DF2C3000, v71, OS_LOG_TYPE_ERROR, "Failed to standardize ACLs for %@ at %@: %@", buf, 0x20u);

LABEL_45:
    goto LABEL_41;
  }

  v60 = +[MCMFileManager defaultManager];
  v88 = v26;
  v61 = [v60 moveItemAtURL:v23 toURL:v22 error:&v88];
  v62 = v88;

  if (v61)
  {
    v22 = v22;
    v24 = v22;
    v26 = v62;
    v18 = v81;
    goto LABEL_15;
  }

  v26 = v62;
  v18 = [[MCMError alloc] initWithErrorType:64];

  v71 = container_log_handle_for_category();
  if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
  {
    v83 = [v13 identifier];
    v80 = [v23 path];
    v78 = [v22 path];
    *buf = 138413058;
    v93 = v83;
    v94 = 2112;
    v95 = v80;
    v96 = 2112;
    v97 = v78;
    v79 = v78;
    v98 = 2112;
    v99 = v26;
    _os_log_error_impl(&dword_1DF2C3000, v71, OS_LOG_TYPE_ERROR, "Failed move for %@ from %@ to: %@: %@", buf, 0x2Au);

    goto LABEL_45;
  }

LABEL_41:

  v24 = 0;
LABEL_15:
  v27 = container_log_handle_for_category();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v93 = v24;
    v94 = 2112;
    v95 = v18;
    _os_log_debug_impl(&dword_1DF2C3000, v27, OS_LOG_TYPE_DEBUG, "Stage shared content result: %@, error = %@", buf, 0x16u);
  }

  v28 = [MCMResultWithURLBase alloc];
  if (v24)
  {
    v29 = [(MCMResultWithURLBase *)v28 initWithURL:v24 existed:1 sandboxToken:0];
  }

  else
  {
    v29 = [(MCMResultBase *)v28 initWithError:v18];
  }

  v30 = v29;
  v31 = [(MCMCommand *)self resultPromise];
  [v31 completeWithResult:v30];

  objc_autoreleasePoolPop(context);
  v32 = *MEMORY[0x1E69E9840];
}

- (BOOL)preflightClientAllowed
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [(MCMCommand *)self context];
  v3 = [v2 clientIdentity];
  v4 = [v3 isAllowedToStageSharedContent];

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (MCMCommandStageSharedContent)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v18.receiver = self;
  v18.super_class = MCMCommandStageSharedContent;
  v9 = [(MCMCommand *)&v18 initWithMessage:v8 context:a4 reply:a5];
  if (v9)
  {
    v10 = [v8 identifier];
    identifier = v9->_identifier;
    v9->_identifier = v10;

    v12 = [v8 sourceRelativePath];
    sourceRelativePath = v9->_sourceRelativePath;
    v9->_sourceRelativePath = v12;

    v14 = [v8 destinationRelativePath];
    destinationRelativePath = v9->_destinationRelativePath;
    v9->_destinationRelativePath = v14;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (Class)incomingMessageClass
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return objc_opt_class();
}

+ (unint64_t)command
{
  v2 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 26;
}

@end