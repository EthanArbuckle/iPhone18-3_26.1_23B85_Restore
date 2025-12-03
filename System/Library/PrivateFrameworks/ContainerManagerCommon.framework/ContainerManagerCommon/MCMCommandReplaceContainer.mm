@interface MCMCommandReplaceContainer
+ (BOOL)recoverFromReplaceOperationsWithContext:(id)context error:(id *)error;
+ (Class)incomingMessageClass;
+ (id)_readAndValidateReplaceFileAtUrl:(id)url error:(id *)error;
+ (unint64_t)command;
- (BOOL)_writeToDiskReplaceAt:(id)at old:(id)old withNew:(id)new usingStaging:(id)staging toDestination:(id)destination error:(id *)error;
- (BOOL)asyncReclaim;
- (BOOL)preflightClientAllowed;
- (MCMCommandReplaceContainer)initWithMessage:(id)message context:(id)context reply:(id)reply;
- (MCMConcreteContainerIdentity)containerIdentityNew;
- (MCMConcreteContainerIdentity)containerIdentityOld;
- (void)execute;
@end

@implementation MCMCommandReplaceContainer

- (BOOL)asyncReclaim
{
  result = self->_asyncReclaim;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMConcreteContainerIdentity)containerIdentityNew
{
  result = self->_containerIdentityNew;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMConcreteContainerIdentity)containerIdentityOld
{
  result = self->_containerIdentityOld;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_writeToDiskReplaceAt:(id)at old:(id)old withNew:(id)new usingStaging:(id)staging toDestination:(id)destination error:(id *)error
{
  v50 = *MEMORY[0x1E69E9840];
  atCopy = at;
  oldCopy = old;
  newCopy = new;
  stagingCopy = staging;
  destinationCopy = destination;
  v18 = +[MCMFileManager defaultManager];
  v19 = [v18 dataWritingOptionsForFileAtURL:atCopy];

  if (oldCopy && newCopy && stagingCopy && destinationCopy)
  {
    errorCopy = error;
    v40[0] = @"MCMReplaceOperationOldURL";
    path = [oldCopy path];
    v41[0] = path;
    v40[1] = @"MCMReplaceOperationNewURL";
    path2 = [newCopy path];
    v41[1] = path2;
    v40[2] = @"MCMReplaceOperationStagingURL";
    path3 = [stagingCopy path];
    v41[2] = path3;
    v40[3] = @"MCMReplaceOperationDestURL";
    v37 = destinationCopy;
    path4 = [destinationCopy path];
    v41[3] = path4;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:4];

    v39 = 0;
    LOBYTE(path4) = [v24 MCM_writeToURL:atCopy withOptions:v19 error:&v39];
    v25 = v39;
    if (path4)
    {
      v26 = 0;
      v27 = 1;
      destinationCopy = v37;
      goto LABEL_16;
    }

    v26 = [[MCMError alloc] initWithNSError:v25 url:atCopy defaultErrorType:86];
    v28 = container_log_handle_for_category();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      path5 = [atCopy path];
      *buf = 138412546;
      v43 = path5;
      v44 = 2112;
      v45 = v25;
      _os_log_error_impl(&dword_1DF2C3000, v28, OS_LOG_TYPE_ERROR, "Failed to write replace dictionary to URL %@; error = %@", buf, 0x16u);
    }

    error = errorCopy;
    destinationCopy = v37;
  }

  else
  {
    v26 = [[MCMError alloc] initWithErrorType:33 category:4];
    v28 = container_log_handle_for_category();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      path6 = [oldCopy path];
      path7 = [newCopy path];
      path8 = [stagingCopy path];
      [destinationCopy path];
      *buf = 138413058;
      v43 = path6;
      v44 = 2112;
      v45 = path7;
      v46 = 2112;
      v47 = path8;
      v49 = v48 = 2112;
      v33 = v49;
      _os_log_error_impl(&dword_1DF2C3000, v28, OS_LOG_TYPE_ERROR, "Invalid Replace File Info: old: %@, new: %@, staging: %@, dest: %@", buf, 0x2Au);
    }

    v24 = 0;
    v25 = 0;
  }

  if (error)
  {
    v29 = v26;
    v27 = 0;
    *error = v26;
  }

  else
  {
    v27 = 0;
  }

LABEL_16:

  v30 = *MEMORY[0x1E69E9840];
  return v27;
}

- (void)execute
{
  v258 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  containerIdentityNew = [(MCMCommandReplaceContainer *)self containerIdentityNew];
  containerIdentityOld = [(MCMCommandReplaceContainer *)self containerIdentityOld];
  uuid = [(MCMError *)containerIdentityOld uuid];
  containerClass = [(MCMError *)containerIdentityNew containerClass];
  containerClass2 = [(MCMError *)containerIdentityOld containerClass];
  identifier = [(MCMError *)containerIdentityNew identifier];
  identifier2 = [(MCMError *)containerIdentityOld identifier];
  userIdentity = [(MCMError *)containerIdentityNew userIdentity];
  userIdentity2 = [(MCMError *)containerIdentityOld userIdentity];
  v9 = containermanager_copy_global_configuration();
  managedPathRegistry = [v9 managedPathRegistry];
  containermanagerReplaceOperations = [managedPathRegistry containermanagerReplaceOperations];

  v213 = containermanagerReplaceOperations;
  v215 = [containermanagerReplaceOperations url];
  v225 = uuid;
  v226 = identifier;
  if (!v215)
  {
    v206 = containerClass2;
    v15 = [[MCMError alloc] initWithErrorType:84];
    v16 = container_log_handle_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Failed to get url for storing replace operations.", buf, 2u);
    }

    v211 = 0;
    v212 = 0;
    v17 = 0;
    v227 = 0;
    containerRootURL7 = 0;
    v18 = 0;
    v218 = 0;
    v222 = 0;
    goto LABEL_51;
  }

  if (uuid && containerClass2 != containerClass)
  {
    v12 = [[MCMError alloc] initWithErrorType:23];
    v13 = container_log_handle_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v247 = containerClass2;
      v248 = 2048;
      v249 = containerClass;
      v14 = "Can't replace containers of different class types: %ld and %ld";
LABEL_26:
      _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, v14, buf, 0x16u);
      goto LABEL_34;
    }

    goto LABEL_34;
  }

  if (!uuid)
  {
    v206 = containerClass2;
    v222 = 0;
    v26 = 0;
LABEL_16:
    context = [(MCMCommand *)self context];
    containerCache = [context containerCache];
    v243 = v26;
    v29 = [containerCache entryForContainerIdentity:containerIdentityNew error:&v243];
    v15 = v243;

    v205 = containerIdentityNew;
    if (v29)
    {
      uuid2 = [v29 uuid];
      uuid3 = [(MCMError *)containerIdentityNew uuid];
      v32 = [uuid2 isEqual:uuid3];

      if (v32)
      {
        v242 = v15;
        v212 = v29;
        v18 = [v29 metadataWithError:&v242];
        v33 = v242;

        if (v18)
        {
          transient = [v18 transient];
          if (v222)
          {
            containerPath = [v18 containerPath];
            containerPath2 = [v222 containerPath];
            v37 = [containerPath isEqual:containerPath2];

            if (v37)
            {
              v15 = [[MCMError alloc] initWithErrorType:22];

              v16 = container_log_handle_for_category();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                containerPath3 = [v18 containerPath];
                *buf = 138412290;
                v247 = containerPath3;
                _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Can't replace the same container at %@", buf, 0xCu);
              }

              v17 = 0;
              v211 = 0;
              v227 = 0;
              containerRootURL7 = 0;
              goto LABEL_50;
            }
          }

          v194 = v33;
          selfCopy = self;
          v187 = transient;
          v204 = identifier2;
          v41 = v225;
          context2 = [(MCMCommand *)self context];
          clientIdentity = [context2 clientIdentity];
          [clientIdentity platform];
          [v18 containerClass];
          [v18 transient];
          v44 = container_class_supports_randomized_path();

          containerPath4 = [v18 containerPath];
          containerRootURL = [containerPath4 containerRootURL];
          lastPathComponent = [containerRootURL lastPathComponent];

          v40 = v226;
          containerIdentityNew = v205;
          v211 = lastPathComponent;
          if (v44)
          {
            v48 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:lastPathComponent];
            if (!v48)
            {
              v15 = [[MCMError alloc] initWithErrorType:10];

              v16 = container_log_handle_for_category();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                containerPath5 = [v18 containerPath];
                containerRootURL2 = [containerPath5 containerRootURL];
                path = [containerRootURL2 path];
                *buf = 138412290;
                v247 = path;
                _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Invalid URL (last path component not UUID): %@", buf, 0xCu);
              }

              v17 = 0;
              v227 = 0;
              containerRootURL7 = 0;
              v218 = 0;
              goto LABEL_99;
            }
          }

          containerPath6 = [v222 containerPath];
          v17 = containerPath6;
          if (!((v225 == 0) | v44 & 1))
          {
            v218 = 0;
            v83 = containerPath6;
            goto LABEL_86;
          }

          v50 = objc_opt_class();
          if ([v222 transient])
          {
            v50 = objc_opt_class();
          }

          v51 = [v50 containerPathForUserIdentity:userIdentity containerClass:containerClass containerPathIdentifier:lastPathComponent];
          containerClassPath = [v51 containerClassPath];
          v241 = 0;
          v53 = [containerClassPath createIfNecessaryWithError:&v241];
          v54 = v241;

          v218 = v54;
          if (v53)
          {

            v55 = +[MCMFileManager defaultManager];
            v216 = v51;
            containerRootURL3 = [v51 containerRootURL];
            v57 = [v55 itemExistsAtURL:containerRootURL3];

            if (v57)
            {
              v15 = [[MCMError alloc] initWithErrorType:27];

              v16 = container_log_handle_for_category();
              identifier2 = v204;
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                containerRootURL4 = [(MCMError *)v216 containerRootURL];
                path2 = [containerRootURL4 path];
                *buf = 138412290;
                v247 = path2;
                _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Container already exists at %@", buf, 0xCu);
              }

              v227 = 0;
              containerRootURL7 = 0;
              v17 = v216;
              self = selfCopy;
              goto LABEL_51;
            }

            identifier2 = v204;
            if (!v225)
            {
              v130 = [(MCMError *)v205 identityByChangingTransient:0];
              containerIdentity = [v130 containerIdentity];

              context3 = [(MCMCommand *)selfCopy context];
              containerCache2 = [context3 containerCache];
              v240 = v194;
              v133 = [containerCache2 entryForContainerIdentity:containerIdentity error:&v240];
              v12 = v240;

              if (v133)
              {
                v134 = [[MCMError alloc] initWithErrorType:27];

                v135 = container_log_handle_for_category();
                if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
                {
                  identifier3 = [v18 identifier];
                  transient2 = [v222 transient];
                  *buf = 138412802;
                  v247 = identifier3;
                  v248 = 2048;
                  v249 = containerClass;
                  v250 = 1024;
                  LODWORD(v251) = transient2;
                  _os_log_error_impl(&dword_1DF2C3000, v135, OS_LOG_TYPE_ERROR, "Container with identifier: %@, class: %ld, transient: %d already exists", buf, 0x1Cu);
                }

                v12 = v134;
              }

              else if ([(MCMError *)v12 type]== 21)
              {

                v154 = container_log_handle_for_category();
                if (os_signpost_enabled(v154))
                {
                  containerPath7 = [v18 containerPath];
                  containerPathIdentifier = [containerPath7 containerPathIdentifier];
                  identifier4 = [v18 identifier];
                  containerClass3 = [v18 containerClass];
                  *buf = 138478339;
                  v247 = containerPathIdentifier;
                  v248 = 2113;
                  v249 = identifier4;
                  v250 = 2050;
                  v251 = containerClass3;
                  _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v154, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PromotingTransientContainer", " uuid=%{private, signpost.description:attribute}@  identifier=%{private, signpost.description:attribute}@  class=%{public, signpost.description:attribute}llu ", buf, 0x20u);
                }

                v227 = 0;
                containerRootURL7 = 0;
                v12 = 0;
                self = selfCopy;
                identifier2 = v204;
                goto LABEL_131;
              }

              v41 = v225;
              identifier2 = v204;

              v227 = 0;
              containerRootURL7 = 0;
              self = selfCopy;
              goto LABEL_69;
            }

            v83 = v216;
LABEL_86:
            uUID = [MEMORY[0x1E696AFB0] UUID];
            uUIDString = [uUID UUIDString];

            containerPath8 = [v222 containerPath];
            containerRootURL5 = [containerPath8 containerRootURL];

            containerPath9 = [v18 containerPath];
            containerRootURL6 = [containerPath9 containerRootURL];

            v88 = MEMORY[0x1E695DFF8];
            v89 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.plist", uUIDString];
            v227 = [v88 URLWithString:v89 relativeToURL:v215];

            v216 = v83;
            v181 = uUIDString;
            v90 = [MCMContainerStagingPath stagingContainerPathForDestinationContainerPath:v83 stagingPathIdentifier:uUIDString];
            containerClassPath2 = [(MCMError *)v90 containerClassPath];
            v239 = v218;
            LOBYTE(uUIDString) = [containerClassPath2 createIfNecessaryWithError:&v239];
            v179 = v239;

            v180 = v90;
            if (uUIDString)
            {
              containerRootURL7 = [(MCMError *)v90 containerRootURL];
              v92 = [MCMContainerCacheEntry birthtimeForURL:containerRootURL5];
              if (v92 | v93)
              {
                birthtime = v92;
                v99 = v93;
                self = selfCopy;
              }

              else
              {
                v94 = +[MCMFileManager defaultManager];
                v238 = 0;
                v95 = [v94 fsNodeOfURL:containerRootURL5 followSymlinks:0 error:&v238];
                v96 = v238;

                if (v95)
                {
                  birthtime = [v95 birthtime];
                  v99 = v98;
                }

                else
                {
                  v113 = container_log_handle_for_category();
                  if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v247 = containerRootURL5;
                    v248 = 2112;
                    v249 = v96;
                    _os_log_error_impl(&dword_1DF2C3000, v113, OS_LOG_TYPE_ERROR, "Could not read fs node for old container at [%@] (non-fatal); error = %@", buf, 0x16u);
                  }

                  v99 = 0;
                  birthtime = 0;
                }

                self = selfCopy;
              }

              if (birthtime | v99)
              {
                [MCMContainerCacheEntry setBirthtime:birthtime forURL:v99, containerRootURL6];
              }

              containerRootURL8 = [(MCMError *)v216 containerRootURL];
              v237 = v194;
              v115 = [(MCMCommandReplaceContainer *)self _writeToDiskReplaceAt:v227 old:containerRootURL5 withNew:containerRootURL6 usingStaging:containerRootURL7 toDestination:containerRootURL8 error:&v237];
              v116 = v237;

              v182 = v116;
              if (v115)
              {
                v117 = container_log_handle_for_category();
                if (os_signpost_enabled(v117))
                {
                  containerPath10 = [v222 containerPath];
                  containerPathIdentifier2 = [containerPath10 containerPathIdentifier];
                  identifier5 = [v222 identifier];
                  containerClass4 = [v222 containerClass];
                  containerPath11 = [v18 containerPath];
                  containerPathIdentifier3 = [containerPath11 containerPathIdentifier];
                  identifier6 = [v18 identifier];
                  containerClass5 = [v18 containerClass];
                  *buf = 138479107;
                  v247 = containerPathIdentifier2;
                  v248 = 2113;
                  v249 = identifier5;
                  v250 = 2050;
                  v251 = containerClass4;
                  v252 = 2113;
                  v253 = containerPathIdentifier3;
                  v254 = 2113;
                  v255 = identifier6;
                  v256 = 2050;
                  v257 = containerClass5;
                  _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v117, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ReplacingContainer", " uuid=%{private, signpost.description:attribute}@  identifier=%{private, signpost.description:attribute}@  class=%{public, signpost.description:attribute}llu  -->  uuid=%{private, signpost.description:attribute}@  identifier=%{private, signpost.description:attribute}@  class=%{public, signpost.description:attribute}llu ", buf, 0x3Eu);
                }

                v122 = +[MCMFileManager defaultManager];
                containerPath12 = [v222 containerPath];
                containerRootURL9 = [containerPath12 containerRootURL];
                v236 = v179;
                v196 = [v122 moveItemAtURL:containerRootURL9 toURL:containerRootURL7 error:&v236];
                v218 = v236;

                if (v196)
                {
                  context4 = [(MCMCommand *)self context];
                  containerCache3 = [context4 containerCache];
                  v235 = v182;
                  v127 = [containerCache3 removeContainerForUserIdentity:userIdentity2 contentClass:v206 identifier:identifier2 transient:objc_msgSend(v222 error:{"transient"), &v235}];
                  v12 = v235;

                  if (v127)
                  {
                    v128 = 1;
                    v41 = v225;
                    v40 = v226;
                    v107 = v180;
                    goto LABEL_130;
                  }

                  v182 = [[MCMError alloc] initWithErrorType:46];

                  v106 = container_log_handle_for_category();
                  v107 = v180;
                  if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
                  {
                    transient3 = [v222 transient];
                    *buf = 138412802;
                    v247 = identifier2;
                    v248 = 2048;
                    v249 = v206;
                    v250 = 1024;
                    LODWORD(v251) = transient3;
                    _os_log_error_impl(&dword_1DF2C3000, v106, OS_LOG_TYPE_ERROR, "Failed to remove from cache id: %@, class: %ld, transient: %d", buf, 0x1Cu);
                  }

                  v105 = v218;
                }

                else
                {
                  v129 = [[MCMError alloc] initWithErrorType:14];

                  v106 = container_log_handle_for_category();
                  v107 = v180;
                  if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
                  {
                    containerPath13 = [v222 containerPath];
                    containerRootURL10 = [containerPath13 containerRootURL];
                    path3 = [containerRootURL10 path];
                    path4 = [containerRootURL7 path];
                    *buf = 138412546;
                    v247 = path3;
                    v248 = 2112;
                    v249 = path4;
                    _os_log_error_impl(&dword_1DF2C3000, v106, OS_LOG_TYPE_ERROR, "Failed to move old %@ to staging %@", buf, 0x16u);
                  }

                  v105 = v218;
                  v182 = v129;
                }

                v41 = v225;
                v40 = v226;
              }

              else
              {
                v106 = container_log_handle_for_category();
                v41 = v225;
                if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v247 = v116;
                  _os_log_error_impl(&dword_1DF2C3000, v106, OS_LOG_TYPE_ERROR, "Failed to write replace file: %@", buf, 0xCu);
                }

                v40 = v226;
                v105 = v179;
                v107 = v180;
              }
            }

            else
            {
              v102 = [MCMError alloc];
              containerClassPath3 = [(MCMError *)v90 containerClassPath];
              classURL = [containerClassPath3 classURL];
              v105 = v179;
              v182 = [MCMError initWithNSError:v102 url:"initWithNSError:url:defaultErrorType:" defaultErrorType:?];

              v106 = container_log_handle_for_category();
              if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v107 = v180;
                v247 = v180;
                v248 = 2112;
                v249 = v179;
                _os_log_error_impl(&dword_1DF2C3000, v106, OS_LOG_TYPE_ERROR, "Failed to create class path dir for %@: %@", buf, 0x16u);
                containerRootURL7 = 0;
                self = selfCopy;
              }

              else
              {
                containerRootURL7 = 0;
                self = selfCopy;
                v107 = v180;
              }
            }

            v128 = 0;
            v218 = v105;
            v12 = v182;
LABEL_130:

            if ((v128 & 1) == 0)
            {
              goto LABEL_53;
            }

LABEL_131:
            if (v187)
            {
              v136 = [v18 metadataBySettingTransient:0];

              v18 = v136;
              v137 = v216;
            }

            else
            {
              v137 = v216;
              if (!v222)
              {
LABEL_136:
                v216 = v137;
                v139 = +[MCMFileManager defaultManager];
                containerPath14 = [v18 containerPath];
                containerRootURL11 = [containerPath14 containerRootURL];
                containerRootURL12 = [(MCMError *)v137 containerRootURL];
                v233 = v218;
                v185 = [v139 moveItemAtURL:containerRootURL11 toURL:containerRootURL12 error:&v233];
                v197 = v233;

                if ((v185 & 1) == 0)
                {
                  v151 = [MCMError alloc];
                  containerRootURL13 = [(MCMError *)v137 containerRootURL];
                  v15 = [(MCMError *)v151 initWithNSError:v197 url:containerRootURL13 defaultErrorType:15];

                  v16 = container_log_handle_for_category();
                  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                  {
                    containerPath15 = [v222 containerPath];
                    containerRootURL14 = [containerPath15 containerRootURL];
                    path5 = [containerRootURL14 path];
                    containerPath16 = [v18 containerPath];
                    containerRootURL15 = [containerPath16 containerRootURL];
                    path6 = [containerRootURL15 path];
                    containerRootURL16 = [(MCMError *)v216 containerRootURL];
                    path7 = [containerRootURL16 path];
                    *buf = 138412802;
                    v247 = path5;
                    v248 = 2112;
                    v249 = path6;
                    v250 = 2112;
                    v251 = path7;
                    _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Failed to replace: %@ with: %@ at: %@", buf, 0x20u);
                  }

                  v17 = v216;
                  v218 = v197;
                  goto LABEL_51;
                }

                context5 = [(MCMCommand *)self context];
                containerCache4 = [context5 containerCache];
                v232 = v12;
                v220 = [containerCache4 removeContainerForUserIdentity:userIdentity contentClass:containerClass identifier:v226 transient:v187 error:&v232];
                v144 = v232;

                if ((v220 & 1) == 0)
                {
                  v15 = [[MCMError alloc] initWithErrorType:46];

                  v16 = container_log_handle_for_category();
                  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                  {
                    transient4 = [v18 transient];
                    *buf = 138412802;
                    v247 = v226;
                    v248 = 2048;
                    v249 = containerClass;
                    v250 = 1024;
                    LODWORD(v251) = transient4;
                    _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Failed to remove from cache id: %@, class: %ld, transient: %d", buf, 0x1Cu);
                  }

                  v17 = v216;
                  v218 = v197;
                  goto LABEL_51;
                }

                selfCopy2 = self;
                v146 = [v18 metadataByChangingContainerPath:v216];

                [(MCMCommand *)selfCopy2 context];
                v148 = v147 = v144;
                containerCache5 = [v148 containerCache];
                v231 = v147;
                v150 = [containerCache5 addContainerMetadata:v146 error:&v231];
                v12 = v231;

                if (v150)
                {
                  v218 = v197;
                  v18 = v146;
                  self = selfCopy;
                  identifier2 = v204;
LABEL_52:
                  v41 = v225;
                  v40 = v226;
                  if (!v225)
                  {
                    goto LABEL_70;
                  }

LABEL_53:
                  v208 = v18;
                  v58 = containerIdentityNew;
                  if (containerRootURL7)
                  {
                    v201 = containerIdentityOld;
                    v59 = containermanager_copy_global_configuration();
                    v60 = [v59 isGlobalContainerClass:v206];

                    if (v60)
                    {
                      v61 = 0;
                    }

                    else
                    {
                      v61 = userIdentity2;
                    }

                    selfCopy3 = self;
                    context6 = [(MCMCommand *)self context];
                    containerFactory = [context6 containerFactory];
                    v230 = v12;
                    v65 = [containerFactory deleteURL:containerRootURL7 forUserIdentity:v61 error:&v230];
                    v66 = v230;

                    if ((v65 & 1) == 0)
                    {
                      v67 = container_log_handle_for_category();
                      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                      {
                        path8 = [containerRootURL7 path];
                        *buf = 138412546;
                        v247 = path8;
                        v248 = 2112;
                        v249 = v66;
                        _os_log_error_impl(&dword_1DF2C3000, v67, OS_LOG_TYPE_ERROR, "Failed to remove staging dir: %@; error = %@", buf, 0x16u);
                      }

                      v66 = 0;
                    }

                    self = selfCopy3;

                    v12 = v66;
                    v58 = containerIdentityNew;
                    v41 = v225;
                    v40 = v226;
                    containerIdentityOld = v201;
                  }

                  if (v227)
                  {
                    v68 = identifier2;
                    selfCopy4 = self;
                    context7 = [(MCMCommand *)self context];
                    containerFactory2 = [context7 containerFactory];
                    v229 = v12;
                    v72 = [containerFactory2 deleteURL:v227 forUserIdentity:0 error:&v229];
                    v13 = v229;

                    if ((v72 & 1) == 0)
                    {
                      v82 = container_log_handle_for_category();
                      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
                      {
                        path9 = [v227 path];
                        *buf = 138412546;
                        v247 = path9;
                        v248 = 2112;
                        v249 = v13;
                        _os_log_error_impl(&dword_1DF2C3000, v82, OS_LOG_TYPE_ERROR, "Failed to remove replace file: %@; error = %@", buf, 0x16u);
                      }

                      v12 = 0;
                      self = selfCopy4;
                      identifier2 = v68;
                      containerIdentityNew = v58;
                      v18 = v208;
                      goto LABEL_35;
                    }

                    v12 = v13;
                    self = selfCopy4;
                    identifier2 = v68;
                    v41 = v225;
                    v40 = v226;
                  }

                  else
                  {
                    v227 = 0;
                  }

                  containerIdentityNew = v58;
                  v18 = v208;
                  goto LABEL_67;
                }

                v15 = [[MCMError alloc] initWithErrorType:45];

                v16 = container_log_handle_for_category();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  transient5 = [v222 transient];
                  *buf = 138412802;
                  v247 = v146;
                  v248 = 2112;
                  v17 = v216;
                  v249 = v216;
                  v250 = 1024;
                  LODWORD(v251) = transient5;
                  _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Failed to add to cache: %@, url: %@, transient: %d", buf, 0x1Cu);
                }

                else
                {
                  v17 = v216;
                }

                v18 = v146;
                v218 = v197;
                goto LABEL_99;
              }
            }

            v234 = v12;
            v138 = [v18 writeMetadataToDiskWithError:&v234];
            v15 = v234;

            if ((v138 & 1) == 0)
            {
              v16 = container_log_handle_for_category();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                containerPath17 = [v222 containerPath];
                containerRootURL17 = [containerPath17 containerRootURL];
                [containerRootURL17 path];
                v164 = v137;
                v165 = v217 = v137;
                containerPath18 = [v18 containerPath];
                containerRootURL18 = [containerPath18 containerRootURL];
                path10 = [containerRootURL18 path];
                containerRootURL19 = [(MCMError *)v164 containerRootURL];
                path11 = [containerRootURL19 path];
                *buf = 138413058;
                v247 = v165;
                v248 = 2112;
                v249 = path10;
                v250 = 2112;
                v251 = path11;
                v252 = 2112;
                v253 = v15;
                _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Failed to write metadata during replace: %@ with: %@ at: %@, error = %@", buf, 0x2Au);

                v17 = v217;
              }

              else
              {
                v17 = v137;
              }

              goto LABEL_51;
            }

            v12 = v15;
            goto LABEL_136;
          }

          v108 = [MCMError alloc];
          containerClassPath4 = [v51 containerClassPath];
          [containerClassPath4 classURL];
          v111 = v110 = v51;
          v15 = [(MCMError *)v108 initWithNSError:v54 url:v111 defaultErrorType:3];

          v112 = container_log_handle_for_category();
          if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v247 = v110;
            v248 = 2112;
            v249 = v54;
            _os_log_error_impl(&dword_1DF2C3000, v112, OS_LOG_TYPE_ERROR, "Failed to create class path dir for %@: %@", buf, 0x16u);
          }

          v227 = 0;
          containerRootURL7 = 0;
          v16 = v110;
LABEL_99:
          self = selfCopy;
          identifier2 = v204;
          goto LABEL_51;
        }

        v15 = v33;
      }

      else
      {
        v38 = [[MCMError alloc] initWithErrorType:21 category:3];

        v212 = 0;
        v15 = v38;
      }
    }

    else
    {
      v212 = 0;
    }

    v16 = container_log_handle_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v247 = containerIdentityNew;
      v248 = 2112;
      v249 = v15;
      _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "No Container with identity: %@; error = %@", buf, 0x16u);
      v17 = 0;
      v211 = 0;
      v227 = 0;
      containerRootURL7 = 0;
      v18 = 0;
      v218 = 0;
      goto LABEL_51;
    }

    v17 = 0;
    v211 = 0;
    v227 = 0;
    containerRootURL7 = 0;
    v18 = 0;
LABEL_50:
    v218 = 0;
    containerIdentityNew = v205;
LABEL_51:

    v216 = v17;
    v12 = v15;
    goto LABEL_52;
  }

  if ([(MCMError *)userIdentity2 isEqual:userIdentity])
  {
    context8 = [(MCMCommand *)self context];
    containerCache6 = [context8 containerCache];
    v245 = 0;
    v13 = [containerCache6 entryForContainerIdentity:containerIdentityOld error:&v245];
    v12 = v245;

    if (v13)
    {
      v206 = containerClass2;
      selfCopy5 = self;
      uuid4 = [v13 uuid];
      uuid5 = [(MCMError *)containerIdentityOld uuid];
      v24 = [uuid4 isEqual:uuid5];

      if (v24)
      {
        v244 = v12;
        v25 = [v13 metadataWithError:&v244];
        v26 = v244;

        v222 = v25;
        if (v25)
        {

          self = selfCopy5;
          goto LABEL_16;
        }
      }

      else
      {
        v26 = [[MCMError alloc] initWithErrorType:21 category:3];

        v13 = 0;
      }

      v12 = v26;
      self = selfCopy5;
    }

    v39 = container_log_handle_for_category();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v247 = containerIdentityOld;
      v248 = 2112;
      v249 = v12;
      _os_log_error_impl(&dword_1DF2C3000, v39, OS_LOG_TYPE_ERROR, "No Container with identity: %@; error = %@", buf, 0x16u);
    }

    goto LABEL_34;
  }

  v12 = [[MCMError alloc] initWithErrorType:76];
  v13 = container_log_handle_for_category();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v247 = userIdentity2;
    v248 = 2112;
    v249 = userIdentity;
    v14 = "Can't replace containers of different personas: %@ and %@";
    goto LABEL_26;
  }

LABEL_34:
  v218 = 0;
  v222 = 0;
  v18 = 0;
  v227 = 0;
  containerRootURL7 = 0;
  v211 = 0;
  v212 = 0;
  v216 = 0;
LABEL_35:

  v41 = v225;
  v40 = v226;
LABEL_67:
  if (![(MCMCommandReplaceContainer *)self asyncReclaim])
  {
    goto LABEL_70;
  }

  v73 = [MCMCommandOperationReclaimDiskSpace alloc];
  context9 = [(MCMCommand *)self context];
  containerIdentity = [(MCMCommandOperationReclaimDiskSpace *)v73 initWithAsynchronously:1 context:context9 resultPromise:0];

  [(MCMCommandOperationReclaimDiskSpace *)containerIdentity execute];
LABEL_69:

LABEL_70:
  if (v12)
  {

    v18 = 0;
  }

  v76 = container_log_handle_for_category();
  if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v247 = v12;
    _os_log_debug_impl(&dword_1DF2C3000, v76, OS_LOG_TYPE_DEBUG, "Replace; error = %@", buf, 0xCu);
  }

  if (v18)
  {
    v77 = [[MCMResultWithContainerBase alloc] initWithMetadata:v18 sandboxToken:0 includePath:1 includeInfo:0 includeUserManagedAssetsRelPath:0 includeCreator:0];
  }

  else
  {
    if (!v12)
    {
      v12 = [[MCMError alloc] initWithErrorType:15 category:4];
      v78 = container_log_handle_for_category();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1DF2C3000, v78, OS_LOG_TYPE_FAULT, "Did not generate metadata, but found no error during replace.", buf, 2u);
      }
    }

    v77 = [(MCMResultBase *)[MCMResultWithContainerBase alloc] initWithError:v12];
  }

  v79 = v77;
  resultPromise = [(MCMCommand *)self resultPromise];
  [resultPromise completeWithResult:v79];

  objc_autoreleasePoolPop(context);
  v81 = *MEMORY[0x1E69E9840];
}

- (BOOL)preflightClientAllowed
{
  v7 = *MEMORY[0x1E69E9840];
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  isAllowedToReplaceContainers = [clientIdentity isAllowedToReplaceContainers];

  v5 = *MEMORY[0x1E69E9840];
  return isAllowedToReplaceContainers;
}

- (MCMCommandReplaceContainer)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v17 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v16.receiver = self;
  v16.super_class = MCMCommandReplaceContainer;
  v9 = [(MCMCommand *)&v16 initWithMessage:messageCopy context:context reply:reply];
  if (v9)
  {
    containerIdentityOld = [messageCopy containerIdentityOld];
    containerIdentityOld = v9->_containerIdentityOld;
    v9->_containerIdentityOld = containerIdentityOld;

    containerIdentityNew = [messageCopy containerIdentityNew];
    containerIdentityNew = v9->_containerIdentityNew;
    v9->_containerIdentityNew = containerIdentityNew;

    v9->_asyncReclaim = 1;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (id)_readAndValidateReplaceFileAtUrl:(id)url error:(id *)error
{
  v63 = *MEMORY[0x1E69E9840];
  urlCopy = url;
  v54 = 0;
  v6 = [MEMORY[0x1E695DF90] MCM_dictionaryWithContentsOfURL:urlCopy options:1 error:&v54];
  v7 = v54;
  v52 = v7;
  v53 = urlCopy;
  if (!v6)
  {
    v10 = [[MCMError alloc] initWithNSError:v7 url:urlCopy defaultErrorType:35];
    v11 = container_log_handle_for_category();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_23:
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
LABEL_24:

      if (error)
      {
        v26 = v10;
        v8 = 0;
        *error = v10;
      }

      else
      {
        v8 = 0;
      }

      v27 = v22;
      v28 = v23;
      v29 = v24;
      goto LABEL_28;
    }

    path = [urlCopy path];
    *buf = 138412290;
    v56 = path;
    _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "Failed to read replace file at URL %@", buf, 0xCu);
LABEL_32:

    goto LABEL_23;
  }

  objc_opt_class();
  v8 = v6;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    v10 = [[MCMError alloc] initWithErrorType:35 category:5];
    v11 = container_log_handle_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v56 = v8;
      _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "Bad Data in replace file: %@", buf, 0xCu);
    }

    goto LABEL_23;
  }

  v13 = [v8 objectForKeyedSubscript:@"MCMReplaceOperationOldURL"];
  objc_opt_class();
  v14 = v13;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_20;
  }

  if (!v14)
  {
LABEL_21:

LABEL_22:
    v10 = [[MCMError alloc] initWithErrorType:35 category:5];
    v11 = container_log_handle_for_category();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    path = [v8 objectForKeyedSubscript:@"MCMReplaceOperationOldURL"];
    v33 = [v8 objectForKeyedSubscript:@"MCMReplaceOperationNewURL"];
    v34 = [v8 objectForKeyedSubscript:@"MCMReplaceOperationStagingURL"];
    v35 = [v8 objectForKeyedSubscript:@"MCMReplaceOperationDestURL"];
    *buf = 138413058;
    v56 = path;
    v57 = 2112;
    v58 = v33;
    v59 = 2112;
    v60 = v34;
    v61 = 2112;
    v62 = v35;
    _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "Invalid replace data: Old: %@, New: %@, Staging: %@, Dest: %@", buf, 0x2Au);

    goto LABEL_32;
  }

  v15 = [v8 objectForKeyedSubscript:@"MCMReplaceOperationNewURL"];
  objc_opt_class();
  v16 = v15;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_19;
  }

  if (!v16)
  {
LABEL_20:

    goto LABEL_21;
  }

  v17 = [v8 objectForKeyedSubscript:@"MCMReplaceOperationStagingURL"];
  objc_opt_class();
  v18 = v17;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_19;
  }

  if (!v18)
  {
LABEL_19:

    goto LABEL_20;
  }

  v19 = [v8 objectForKeyedSubscript:@"MCMReplaceOperationDestURL"];
  objc_opt_class();
  v20 = v19;
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (!v21)
  {
    goto LABEL_22;
  }

  errorCopy = error;
  v36 = MEMORY[0x1E695DFF8];
  v37 = [v8 objectForKeyedSubscript:@"MCMReplaceOperationOldURL"];
  v38 = [v36 fileURLWithPath:v37 isDirectory:1];

  v39 = MEMORY[0x1E695DFF8];
  v40 = [v8 objectForKeyedSubscript:@"MCMReplaceOperationNewURL"];
  v24 = [v39 fileURLWithPath:v40 isDirectory:1];

  v41 = MEMORY[0x1E695DFF8];
  v42 = [v8 objectForKeyedSubscript:@"MCMReplaceOperationStagingURL"];
  v23 = [v41 fileURLWithPath:v42 isDirectory:1];

  v43 = MEMORY[0x1E695DFF8];
  v44 = [v8 objectForKeyedSubscript:@"MCMReplaceOperationDestURL"];
  v22 = [v43 fileURLWithPath:v44 isDirectory:1];

  objc_opt_class();
  v25 = v38;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_45;
  }

  if (!v25)
  {
LABEL_46:
    v10 = [[MCMError alloc] initWithErrorType:35 category:5];
    v11 = container_log_handle_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      path2 = [v25 path];
      path3 = [v24 path];
      path4 = [v23 path];
      path5 = [v22 path];
      *buf = 138413058;
      v56 = path2;
      v57 = 2112;
      v58 = path3;
      v59 = 2112;
      v60 = path4;
      v61 = 2112;
      v62 = path5;
      v49 = path5;
      _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "Invalid replace data: Old: %@, New: %@, Staging: %@, Dest: %@", buf, 0x2Au);
    }

    error = errorCopy;
    goto LABEL_24;
  }

  objc_opt_class();
  v29 = v24;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_44;
  }

  if (!v29)
  {
LABEL_45:

    goto LABEL_46;
  }

  objc_opt_class();
  v28 = v23;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_44;
  }

  if (!v28)
  {
LABEL_44:

    goto LABEL_45;
  }

  objc_opt_class();
  v27 = v22;
  if (objc_opt_isKindOfClass())
  {
    v45 = v27;
  }

  else
  {
    v45 = 0;
  }

  if (!v45)
  {
    goto LABEL_46;
  }

  [v8 setObject:v25 forKeyedSubscript:@"MCMReplaceOperationOldURL"];
  [v8 setObject:v29 forKeyedSubscript:@"MCMReplaceOperationNewURL"];
  [v8 setObject:v28 forKeyedSubscript:@"MCMReplaceOperationStagingURL"];
  [v8 setObject:v27 forKeyedSubscript:@"MCMReplaceOperationDestURL"];
  v10 = 0;
LABEL_28:
  v30 = [v8 copy];

  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

+ (BOOL)recoverFromReplaceOperationsWithContext:(id)context error:(id *)error
{
  v82 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = containermanager_copy_global_configuration();
  managedPathRegistry = [v7 managedPathRegistry];
  containermanagerReplaceOperations = [managedPathRegistry containermanagerReplaceOperations];

  v10 = [containermanagerReplaceOperations url];
  if (v10)
  {
    v11 = +[MCMFileManager defaultManager];
    v70 = 0;
    v12 = [v11 urlsForItemsInDirectoryAtURL:v10 error:&v70];
    v13 = v70;

    if (v12)
    {
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      containerCache = v12;
      v66 = [containerCache countByEnumeratingWithState:&v78 objects:v77 count:16];
      if (v66)
      {
        v56 = v12;
        errorCopy = error;
        v63 = v13;
        v58 = v10;
        v59 = containermanagerReplaceOperations;
        v60 = contextCopy;
        v62 = 0;
        v15 = 0;
        v65 = *v79;
        p_superclass = &OBJC_METACLASS___MCMCommandQuery.superclass;
        obj = containerCache;
        selfCopy = self;
LABEL_5:
        v17 = 0;
        while (1)
        {
          if (*v79 != v65)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v78 + 1) + 8 * v17);
          v69 = v15;
          v19 = [self _readAndValidateReplaceFileAtUrl:v18 error:&v69];
          v20 = v69;

          v21 = container_log_handle_for_category();
          defaultManager = v21;
          if (v19)
          {
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              path = [v18 path];
              *buf = 138412546;
              v72 = path;
              v73 = 2112;
              v74 = v19;
              _os_log_debug_impl(&dword_1DF2C3000, defaultManager, OS_LOG_TYPE_DEBUG, "Doing a replace of %@ with info: %@", buf, 0x16u);
            }

            defaultManager = [p_superclass + 409 defaultManager];
            v23 = [(MCMError *)v19 objectForKeyedSubscript:@"MCMReplaceOperationOldURL"];
            if (![defaultManager itemExistsAtURL:v23])
            {
              defaultManager2 = [p_superclass + 409 defaultManager];
              v25 = [(MCMError *)v19 objectForKeyedSubscript:@"MCMReplaceOperationDestURL"];
              v26 = [defaultManager2 itemExistsAtURL:v25];

              if ((v26 & 1) == 0)
              {
                v27 = container_log_handle_for_category();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  v38 = [(MCMError *)v19 objectForKeyedSubscript:@"MCMReplaceOperationStagingURL"];
                  v39 = [(MCMError *)v19 objectForKeyedSubscript:@"MCMReplaceOperationOldURL"];
                  *buf = 138412546;
                  v72 = v38;
                  v73 = 2112;
                  v74 = v39;
                  _os_log_error_impl(&dword_1DF2C3000, v27, OS_LOG_TYPE_ERROR, "Recovering from failed replace by moving: %@ to %@", buf, 0x16u);
                }

                v28 = +[MCMFileManager defaultManager];
                v29 = [(MCMError *)v19 objectForKeyedSubscript:@"MCMReplaceOperationStagingURL"];
                v30 = [(MCMError *)v19 objectForKeyedSubscript:@"MCMReplaceOperationOldURL"];
                v68 = v63;
                v31 = [v28 moveItemAtURL:v29 toURL:v30 error:&v68];
                v32 = v68;

                if ((v31 & 1) == 0)
                {
                  v49 = [MCMError alloc];
                  v50 = [(MCMError *)v19 objectForKeyedSubscript:@"MCMReplaceOperationOldURL"];
                  v15 = [(MCMError *)v49 initWithNSError:v32 url:v50 defaultErrorType:35];

                  v45 = container_log_handle_for_category();
                  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                  {
                    v51 = [(MCMError *)v19 objectForKeyedSubscript:@"MCMReplaceOperationStagingURL"];
                    v52 = [(MCMError *)v19 objectForKeyedSubscript:@"MCMReplaceOperationOldURL"];
                    *buf = 138412802;
                    v72 = v51;
                    v73 = 2112;
                    v74 = v52;
                    v75 = 2112;
                    v76 = v32;
                    _os_log_error_impl(&dword_1DF2C3000, v45, OS_LOG_TYPE_ERROR, "Failed to recover replace move: %@ to %@; error = %@", buf, 0x20u);
                  }

                  goto LABEL_37;
                }

                v62 = 1;
                v63 = v32;
                self = selfCopy;
              }

              p_superclass = (&OBJC_METACLASS___MCMCommandQuery + 8);
              goto LABEL_22;
            }
          }

          else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            path2 = [v18 path];
            *buf = 138412546;
            v72 = path2;
            v73 = 2112;
            v74 = v20;
            _os_log_error_impl(&dword_1DF2C3000, defaultManager, OS_LOG_TYPE_ERROR, "Pending replace operation found, but not valid at [%@], ignoring: %@", buf, 0x16u);
          }

LABEL_22:
          v33 = +[MCMCommandContext privileged];
          containerFactory = [v33 containerFactory];
          v67 = v20;
          v35 = [containerFactory deleteURL:v18 forUserIdentity:0 error:&v67];
          v15 = v67;

          if ((v35 & 1) == 0)
          {
            v45 = container_log_handle_for_category();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              path3 = [v18 path];
              *buf = 138412546;
              v72 = path3;
              v73 = 2112;
              v74 = v15;
              _os_log_error_impl(&dword_1DF2C3000, v45, OS_LOG_TYPE_ERROR, "Failed to remove replace file at %@; error = %@", buf, 0x16u);
            }

            v32 = v63;
LABEL_37:
            containermanagerReplaceOperations = v59;
            contextCopy = v60;
            v10 = v58;
            v42 = obj;

            v41 = 0;
            v13 = v32;
            goto LABEL_45;
          }

          if (v66 == ++v17)
          {
            v66 = [obj countByEnumeratingWithState:&v78 objects:v77 count:16];
            if (v66)
            {
              goto LABEL_5;
            }

            if (v62)
            {
              contextCopy = v60;
              containerCache = [v60 containerCache];
              [containerCache flush];
              v10 = v58;
              containermanagerReplaceOperations = v59;
              v13 = v63;
              v12 = v56;
              error = errorCopy;
              goto LABEL_42;
            }

            containermanagerReplaceOperations = v59;
            contextCopy = v60;
            error = errorCopy;
            v10 = v58;
            v13 = v63;
            v12 = v56;
            if (!errorCopy)
            {
LABEL_44:
              v41 = 1;
              v42 = v12;
              goto LABEL_45;
            }

LABEL_43:
            v46 = v15;
            *error = v15;
            goto LABEL_44;
          }
        }
      }
    }

    else
    {
      domain = [(MCMError *)v13 domain];
      if ([domain isEqualToString:*MEMORY[0x1E696A798]])
      {
        code = [(MCMError *)v13 code];

        if (code == 2)
        {
          v15 = 0;
          if (!error)
          {
            goto LABEL_44;
          }

          goto LABEL_43;
        }
      }

      else
      {
      }

      containerCache = container_log_handle_for_category();
      if (os_log_type_enabled(containerCache, OS_LOG_TYPE_ERROR))
      {
        v54 = [containermanagerReplaceOperations url];
        path4 = [v54 path];
        *buf = 138412546;
        v72 = path4;
        v73 = 2112;
        v74 = v13;
        _os_log_error_impl(&dword_1DF2C3000, containerCache, OS_LOG_TYPE_ERROR, "Failed to get items at replace URL %@ : %@", buf, 0x16u);
      }
    }

    v15 = 0;
LABEL_42:

    if (!error)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v15 = [[MCMError alloc] initWithErrorType:84 category:1];
  v40 = container_log_handle_for_category();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1DF2C3000, v40, OS_LOG_TYPE_ERROR, "Failed to get url for storing replace operations.", buf, 2u);
  }

  v13 = 0;
  v41 = 0;
  v42 = 0;
LABEL_45:

  v47 = *MEMORY[0x1E69E9840];
  return v41;
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
  return 2;
}

@end