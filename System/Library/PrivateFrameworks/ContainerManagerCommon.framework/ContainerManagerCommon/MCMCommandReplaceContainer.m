@interface MCMCommandReplaceContainer
+ (BOOL)recoverFromReplaceOperationsWithContext:(id)a3 error:(id *)a4;
+ (Class)incomingMessageClass;
+ (id)_readAndValidateReplaceFileAtUrl:(id)a3 error:(id *)a4;
+ (unint64_t)command;
- (BOOL)_writeToDiskReplaceAt:(id)a3 old:(id)a4 withNew:(id)a5 usingStaging:(id)a6 toDestination:(id)a7 error:(id *)a8;
- (BOOL)asyncReclaim;
- (BOOL)preflightClientAllowed;
- (MCMCommandReplaceContainer)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5;
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

- (BOOL)_writeToDiskReplaceAt:(id)a3 old:(id)a4 withNew:(id)a5 usingStaging:(id)a6 toDestination:(id)a7 error:(id *)a8
{
  v50 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = +[MCMFileManager defaultManager];
  v19 = [v18 dataWritingOptionsForFileAtURL:v13];

  if (v14 && v15 && v16 && v17)
  {
    v35 = a8;
    v40[0] = @"MCMReplaceOperationOldURL";
    v20 = [v14 path];
    v41[0] = v20;
    v40[1] = @"MCMReplaceOperationNewURL";
    v21 = [v15 path];
    v41[1] = v21;
    v40[2] = @"MCMReplaceOperationStagingURL";
    v22 = [v16 path];
    v41[2] = v22;
    v40[3] = @"MCMReplaceOperationDestURL";
    v37 = v17;
    v23 = [v17 path];
    v41[3] = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:4];

    v39 = 0;
    LOBYTE(v23) = [v24 MCM_writeToURL:v13 withOptions:v19 error:&v39];
    v25 = v39;
    if (v23)
    {
      v26 = 0;
      v27 = 1;
      v17 = v37;
      goto LABEL_16;
    }

    v26 = [[MCMError alloc] initWithNSError:v25 url:v13 defaultErrorType:86];
    v28 = container_log_handle_for_category();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v34 = [v13 path];
      *buf = 138412546;
      v43 = v34;
      v44 = 2112;
      v45 = v25;
      _os_log_error_impl(&dword_1DF2C3000, v28, OS_LOG_TYPE_ERROR, "Failed to write replace dictionary to URL %@; error = %@", buf, 0x16u);
    }

    a8 = v35;
    v17 = v37;
  }

  else
  {
    v26 = [[MCMError alloc] initWithErrorType:33 category:4];
    v28 = container_log_handle_for_category();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v38 = [v14 path];
      v36 = [v15 path];
      v32 = [v16 path];
      [v17 path];
      *buf = 138413058;
      v43 = v38;
      v44 = 2112;
      v45 = v36;
      v46 = 2112;
      v47 = v32;
      v49 = v48 = 2112;
      v33 = v49;
      _os_log_error_impl(&dword_1DF2C3000, v28, OS_LOG_TYPE_ERROR, "Invalid Replace File Info: old: %@, new: %@, staging: %@, dest: %@", buf, 0x2Au);
    }

    v24 = 0;
    v25 = 0;
  }

  if (a8)
  {
    v29 = v26;
    v27 = 0;
    *a8 = v26;
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
  v3 = [(MCMCommandReplaceContainer *)self containerIdentityNew];
  v4 = [(MCMCommandReplaceContainer *)self containerIdentityOld];
  v5 = [(MCMError *)v4 uuid];
  v207 = [(MCMError *)v3 containerClass];
  v6 = [(MCMError *)v4 containerClass];
  v7 = [(MCMError *)v3 identifier];
  v8 = [(MCMError *)v4 identifier];
  v223 = [(MCMError *)v3 userIdentity];
  v224 = [(MCMError *)v4 userIdentity];
  v9 = containermanager_copy_global_configuration();
  v10 = [v9 managedPathRegistry];
  v11 = [v10 containermanagerReplaceOperations];

  v213 = v11;
  v215 = [v11 url];
  v225 = v5;
  v226 = v7;
  if (!v215)
  {
    v206 = v6;
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
    v228 = 0;
    v18 = 0;
    v218 = 0;
    v222 = 0;
    goto LABEL_51;
  }

  if (v5 && v6 != v207)
  {
    v12 = [[MCMError alloc] initWithErrorType:23];
    v13 = container_log_handle_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v247 = v6;
      v248 = 2048;
      v249 = v207;
      v14 = "Can't replace containers of different class types: %ld and %ld";
LABEL_26:
      _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, v14, buf, 0x16u);
      goto LABEL_34;
    }

    goto LABEL_34;
  }

  if (!v5)
  {
    v206 = v6;
    v222 = 0;
    v26 = 0;
LABEL_16:
    v27 = [(MCMCommand *)self context];
    v28 = [v27 containerCache];
    v243 = v26;
    v29 = [v28 entryForContainerIdentity:v3 error:&v243];
    v15 = v243;

    v205 = v3;
    if (v29)
    {
      v30 = [v29 uuid];
      v31 = [(MCMError *)v3 uuid];
      v32 = [v30 isEqual:v31];

      if (v32)
      {
        v242 = v15;
        v212 = v29;
        v18 = [v29 metadataWithError:&v242];
        v33 = v242;

        if (v18)
        {
          v34 = [v18 transient];
          if (v222)
          {
            v35 = [v18 containerPath];
            v36 = [v222 containerPath];
            v37 = [v35 isEqual:v36];

            if (v37)
            {
              v15 = [[MCMError alloc] initWithErrorType:22];

              v16 = container_log_handle_for_category();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                v153 = [v18 containerPath];
                *buf = 138412290;
                v247 = v153;
                _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Can't replace the same container at %@", buf, 0xCu);
              }

              v17 = 0;
              v211 = 0;
              v227 = 0;
              v228 = 0;
              goto LABEL_50;
            }
          }

          v194 = v33;
          v200 = self;
          v187 = v34;
          v204 = v8;
          v41 = v225;
          v42 = [(MCMCommand *)self context];
          v43 = [v42 clientIdentity];
          [v43 platform];
          [v18 containerClass];
          [v18 transient];
          v44 = container_class_supports_randomized_path();

          v45 = [v18 containerPath];
          v46 = [v45 containerRootURL];
          v47 = [v46 lastPathComponent];

          v40 = v226;
          v3 = v205;
          v211 = v47;
          if (v44)
          {
            v48 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v47];
            if (!v48)
            {
              v15 = [[MCMError alloc] initWithErrorType:10];

              v16 = container_log_handle_for_category();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                v159 = [v18 containerPath];
                v160 = [v159 containerRootURL];
                v161 = [v160 path];
                *buf = 138412290;
                v247 = v161;
                _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Invalid URL (last path component not UUID): %@", buf, 0xCu);
              }

              v17 = 0;
              v227 = 0;
              v228 = 0;
              v218 = 0;
              goto LABEL_99;
            }
          }

          v49 = [v222 containerPath];
          v17 = v49;
          if (!((v225 == 0) | v44 & 1))
          {
            v218 = 0;
            v83 = v49;
            goto LABEL_86;
          }

          v50 = objc_opt_class();
          if ([v222 transient])
          {
            v50 = objc_opt_class();
          }

          v51 = [v50 containerPathForUserIdentity:v223 containerClass:v207 containerPathIdentifier:v47];
          v52 = [v51 containerClassPath];
          v241 = 0;
          v53 = [v52 createIfNecessaryWithError:&v241];
          v54 = v241;

          v218 = v54;
          if (v53)
          {

            v55 = +[MCMFileManager defaultManager];
            v216 = v51;
            v56 = [v51 containerRootURL];
            v57 = [v55 itemExistsAtURL:v56];

            if (v57)
            {
              v15 = [[MCMError alloc] initWithErrorType:27];

              v16 = container_log_handle_for_category();
              v8 = v204;
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                v162 = [(MCMError *)v216 containerRootURL];
                v163 = [v162 path];
                *buf = 138412290;
                v247 = v163;
                _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Container already exists at %@", buf, 0xCu);
              }

              v227 = 0;
              v228 = 0;
              v17 = v216;
              self = v200;
              goto LABEL_51;
            }

            v8 = v204;
            if (!v225)
            {
              v130 = [(MCMError *)v205 identityByChangingTransient:0];
              v75 = [v130 containerIdentity];

              v131 = [(MCMCommand *)v200 context];
              v132 = [v131 containerCache];
              v240 = v194;
              v133 = [v132 entryForContainerIdentity:v75 error:&v240];
              v12 = v240;

              if (v133)
              {
                v134 = [[MCMError alloc] initWithErrorType:27];

                v135 = container_log_handle_for_category();
                if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
                {
                  v174 = [v18 identifier];
                  v175 = [v222 transient];
                  *buf = 138412802;
                  v247 = v174;
                  v248 = 2048;
                  v249 = v207;
                  v250 = 1024;
                  LODWORD(v251) = v175;
                  _os_log_error_impl(&dword_1DF2C3000, v135, OS_LOG_TYPE_ERROR, "Container with identifier: %@, class: %ld, transient: %d already exists", buf, 0x1Cu);
                }

                v12 = v134;
              }

              else if ([(MCMError *)v12 type]== 21)
              {

                v154 = container_log_handle_for_category();
                if (os_signpost_enabled(v154))
                {
                  v155 = [v18 containerPath];
                  v156 = [v155 containerPathIdentifier];
                  v157 = [v18 identifier];
                  v158 = [v18 containerClass];
                  *buf = 138478339;
                  v247 = v156;
                  v248 = 2113;
                  v249 = v157;
                  v250 = 2050;
                  v251 = v158;
                  _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v154, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PromotingTransientContainer", " uuid=%{private, signpost.description:attribute}@  identifier=%{private, signpost.description:attribute}@  class=%{public, signpost.description:attribute}llu ", buf, 0x20u);
                }

                v227 = 0;
                v228 = 0;
                v12 = 0;
                self = v200;
                v8 = v204;
                goto LABEL_131;
              }

              v41 = v225;
              v8 = v204;

              v227 = 0;
              v228 = 0;
              self = v200;
              goto LABEL_69;
            }

            v83 = v216;
LABEL_86:
            v84 = [MEMORY[0x1E696AFB0] UUID];
            v85 = [v84 UUIDString];

            v86 = [v222 containerPath];
            v190 = [v86 containerRootURL];

            v87 = [v18 containerPath];
            v184 = [v87 containerRootURL];

            v88 = MEMORY[0x1E695DFF8];
            v89 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.plist", v85];
            v227 = [v88 URLWithString:v89 relativeToURL:v215];

            v216 = v83;
            v181 = v85;
            v90 = [MCMContainerStagingPath stagingContainerPathForDestinationContainerPath:v83 stagingPathIdentifier:v85];
            v91 = [(MCMError *)v90 containerClassPath];
            v239 = v218;
            LOBYTE(v85) = [v91 createIfNecessaryWithError:&v239];
            v179 = v239;

            v180 = v90;
            if (v85)
            {
              v228 = [(MCMError *)v90 containerRootURL];
              v92 = [MCMContainerCacheEntry birthtimeForURL:v190];
              if (v92 | v93)
              {
                v97 = v92;
                v99 = v93;
                self = v200;
              }

              else
              {
                v94 = +[MCMFileManager defaultManager];
                v238 = 0;
                v95 = [v94 fsNodeOfURL:v190 followSymlinks:0 error:&v238];
                v96 = v238;

                if (v95)
                {
                  v97 = [v95 birthtime];
                  v99 = v98;
                }

                else
                {
                  v113 = container_log_handle_for_category();
                  if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v247 = v190;
                    v248 = 2112;
                    v249 = v96;
                    _os_log_error_impl(&dword_1DF2C3000, v113, OS_LOG_TYPE_ERROR, "Could not read fs node for old container at [%@] (non-fatal); error = %@", buf, 0x16u);
                  }

                  v99 = 0;
                  v97 = 0;
                }

                self = v200;
              }

              if (v97 | v99)
              {
                [MCMContainerCacheEntry setBirthtime:v97 forURL:v99, v184];
              }

              v114 = [(MCMError *)v216 containerRootURL];
              v237 = v194;
              v115 = [(MCMCommandReplaceContainer *)self _writeToDiskReplaceAt:v227 old:v190 withNew:v184 usingStaging:v228 toDestination:v114 error:&v237];
              v116 = v237;

              v182 = v116;
              if (v115)
              {
                v117 = container_log_handle_for_category();
                if (os_signpost_enabled(v117))
                {
                  v195 = [v222 containerPath];
                  v219 = [v195 containerPathIdentifier];
                  v118 = [v222 identifier];
                  v177 = [v222 containerClass];
                  v178 = [v18 containerPath];
                  v119 = [v178 containerPathIdentifier];
                  v120 = [v18 identifier];
                  v121 = [v18 containerClass];
                  *buf = 138479107;
                  v247 = v219;
                  v248 = 2113;
                  v249 = v118;
                  v250 = 2050;
                  v251 = v177;
                  v252 = 2113;
                  v253 = v119;
                  v254 = 2113;
                  v255 = v120;
                  v256 = 2050;
                  v257 = v121;
                  _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v117, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ReplacingContainer", " uuid=%{private, signpost.description:attribute}@  identifier=%{private, signpost.description:attribute}@  class=%{public, signpost.description:attribute}llu  -->  uuid=%{private, signpost.description:attribute}@  identifier=%{private, signpost.description:attribute}@  class=%{public, signpost.description:attribute}llu ", buf, 0x3Eu);
                }

                v122 = +[MCMFileManager defaultManager];
                v123 = [v222 containerPath];
                v124 = [v123 containerRootURL];
                v236 = v179;
                v196 = [v122 moveItemAtURL:v124 toURL:v228 error:&v236];
                v218 = v236;

                if (v196)
                {
                  v125 = [(MCMCommand *)self context];
                  v126 = [v125 containerCache];
                  v235 = v182;
                  v127 = [v126 removeContainerForUserIdentity:v224 contentClass:v206 identifier:v8 transient:objc_msgSend(v222 error:{"transient"), &v235}];
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
                    v173 = [v222 transient];
                    *buf = 138412802;
                    v247 = v8;
                    v248 = 2048;
                    v249 = v206;
                    v250 = 1024;
                    LODWORD(v251) = v173;
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
                    v199 = [v222 containerPath];
                    v183 = [v199 containerRootURL];
                    v170 = [v183 path];
                    v171 = [v228 path];
                    *buf = 138412546;
                    v247 = v170;
                    v248 = 2112;
                    v249 = v171;
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
              v103 = [(MCMError *)v90 containerClassPath];
              v104 = [v103 classURL];
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
                v228 = 0;
                self = v200;
              }

              else
              {
                v228 = 0;
                self = v200;
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
                v191 = [v18 containerPath];
                v140 = [v191 containerRootURL];
                v141 = [(MCMError *)v137 containerRootURL];
                v233 = v218;
                v185 = [v139 moveItemAtURL:v140 toURL:v141 error:&v233];
                v197 = v233;

                if ((v185 & 1) == 0)
                {
                  v151 = [MCMError alloc];
                  v152 = [(MCMError *)v137 containerRootURL];
                  v15 = [(MCMError *)v151 initWithNSError:v197 url:v152 defaultErrorType:15];

                  v16 = container_log_handle_for_category();
                  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                  {
                    v210 = [v222 containerPath];
                    v203 = [v210 containerRootURL];
                    v221 = [v203 path];
                    v193 = [v18 containerPath];
                    v189 = [v193 containerRootURL];
                    v168 = [v189 path];
                    v186 = [(MCMError *)v216 containerRootURL];
                    v169 = [v186 path];
                    *buf = 138412802;
                    v247 = v221;
                    v248 = 2112;
                    v249 = v168;
                    v250 = 2112;
                    v251 = v169;
                    _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Failed to replace: %@ with: %@ at: %@", buf, 0x20u);
                  }

                  v17 = v216;
                  v218 = v197;
                  goto LABEL_51;
                }

                v142 = [(MCMCommand *)self context];
                v143 = [v142 containerCache];
                v232 = v12;
                v220 = [v143 removeContainerForUserIdentity:v223 contentClass:v207 identifier:v226 transient:v187 error:&v232];
                v144 = v232;

                if ((v220 & 1) == 0)
                {
                  v15 = [[MCMError alloc] initWithErrorType:46];

                  v16 = container_log_handle_for_category();
                  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                  {
                    v172 = [v18 transient];
                    *buf = 138412802;
                    v247 = v226;
                    v248 = 2048;
                    v249 = v207;
                    v250 = 1024;
                    LODWORD(v251) = v172;
                    _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Failed to remove from cache id: %@, class: %ld, transient: %d", buf, 0x1Cu);
                  }

                  v17 = v216;
                  v218 = v197;
                  goto LABEL_51;
                }

                v145 = self;
                v146 = [v18 metadataByChangingContainerPath:v216];

                [(MCMCommand *)v145 context];
                v148 = v147 = v144;
                v149 = [v148 containerCache];
                v231 = v147;
                v150 = [v149 addContainerMetadata:v146 error:&v231];
                v12 = v231;

                if (v150)
                {
                  v218 = v197;
                  v18 = v146;
                  self = v200;
                  v8 = v204;
LABEL_52:
                  v41 = v225;
                  v40 = v226;
                  if (!v225)
                  {
                    goto LABEL_70;
                  }

LABEL_53:
                  v208 = v18;
                  v58 = v3;
                  if (v228)
                  {
                    v201 = v4;
                    v59 = containermanager_copy_global_configuration();
                    v60 = [v59 isGlobalContainerClass:v206];

                    if (v60)
                    {
                      v61 = 0;
                    }

                    else
                    {
                      v61 = v224;
                    }

                    v62 = self;
                    v63 = [(MCMCommand *)self context];
                    v64 = [v63 containerFactory];
                    v230 = v12;
                    v65 = [v64 deleteURL:v228 forUserIdentity:v61 error:&v230];
                    v66 = v230;

                    if ((v65 & 1) == 0)
                    {
                      v67 = container_log_handle_for_category();
                      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                      {
                        v100 = [v228 path];
                        *buf = 138412546;
                        v247 = v100;
                        v248 = 2112;
                        v249 = v66;
                        _os_log_error_impl(&dword_1DF2C3000, v67, OS_LOG_TYPE_ERROR, "Failed to remove staging dir: %@; error = %@", buf, 0x16u);
                      }

                      v66 = 0;
                    }

                    self = v62;

                    v12 = v66;
                    v58 = v3;
                    v41 = v225;
                    v40 = v226;
                    v4 = v201;
                  }

                  if (v227)
                  {
                    v68 = v8;
                    v69 = self;
                    v70 = [(MCMCommand *)self context];
                    v71 = [v70 containerFactory];
                    v229 = v12;
                    v72 = [v71 deleteURL:v227 forUserIdentity:0 error:&v229];
                    v13 = v229;

                    if ((v72 & 1) == 0)
                    {
                      v82 = container_log_handle_for_category();
                      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
                      {
                        v101 = [v227 path];
                        *buf = 138412546;
                        v247 = v101;
                        v248 = 2112;
                        v249 = v13;
                        _os_log_error_impl(&dword_1DF2C3000, v82, OS_LOG_TYPE_ERROR, "Failed to remove replace file: %@; error = %@", buf, 0x16u);
                      }

                      v12 = 0;
                      self = v69;
                      v8 = v68;
                      v3 = v58;
                      v18 = v208;
                      goto LABEL_35;
                    }

                    v12 = v13;
                    self = v69;
                    v8 = v68;
                    v41 = v225;
                    v40 = v226;
                  }

                  else
                  {
                    v227 = 0;
                  }

                  v3 = v58;
                  v18 = v208;
                  goto LABEL_67;
                }

                v15 = [[MCMError alloc] initWithErrorType:45];

                v16 = container_log_handle_for_category();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  v176 = [v222 transient];
                  *buf = 138412802;
                  v247 = v146;
                  v248 = 2112;
                  v17 = v216;
                  v249 = v216;
                  v250 = 1024;
                  LODWORD(v251) = v176;
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
                v202 = [v222 containerPath];
                v209 = [v202 containerRootURL];
                [v209 path];
                v164 = v137;
                v165 = v217 = v137;
                v198 = [v18 containerPath];
                v192 = [v198 containerRootURL];
                v166 = [v192 path];
                v188 = [(MCMError *)v164 containerRootURL];
                v167 = [v188 path];
                *buf = 138413058;
                v247 = v165;
                v248 = 2112;
                v249 = v166;
                v250 = 2112;
                v251 = v167;
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
          v109 = [v51 containerClassPath];
          [v109 classURL];
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
          v228 = 0;
          v16 = v110;
LABEL_99:
          self = v200;
          v8 = v204;
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
      v247 = v3;
      v248 = 2112;
      v249 = v15;
      _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "No Container with identity: %@; error = %@", buf, 0x16u);
      v17 = 0;
      v211 = 0;
      v227 = 0;
      v228 = 0;
      v18 = 0;
      v218 = 0;
      goto LABEL_51;
    }

    v17 = 0;
    v211 = 0;
    v227 = 0;
    v228 = 0;
    v18 = 0;
LABEL_50:
    v218 = 0;
    v3 = v205;
LABEL_51:

    v216 = v17;
    v12 = v15;
    goto LABEL_52;
  }

  if ([(MCMError *)v224 isEqual:v223])
  {
    v19 = [(MCMCommand *)self context];
    v20 = [v19 containerCache];
    v245 = 0;
    v13 = [v20 entryForContainerIdentity:v4 error:&v245];
    v12 = v245;

    if (v13)
    {
      v206 = v6;
      v21 = self;
      v22 = [v13 uuid];
      v23 = [(MCMError *)v4 uuid];
      v24 = [v22 isEqual:v23];

      if (v24)
      {
        v244 = v12;
        v25 = [v13 metadataWithError:&v244];
        v26 = v244;

        v222 = v25;
        if (v25)
        {

          self = v21;
          goto LABEL_16;
        }
      }

      else
      {
        v26 = [[MCMError alloc] initWithErrorType:21 category:3];

        v13 = 0;
      }

      v12 = v26;
      self = v21;
    }

    v39 = container_log_handle_for_category();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v247 = v4;
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
    v247 = v224;
    v248 = 2112;
    v249 = v223;
    v14 = "Can't replace containers of different personas: %@ and %@";
    goto LABEL_26;
  }

LABEL_34:
  v218 = 0;
  v222 = 0;
  v18 = 0;
  v227 = 0;
  v228 = 0;
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
  v74 = [(MCMCommand *)self context];
  v75 = [(MCMCommandOperationReclaimDiskSpace *)v73 initWithAsynchronously:1 context:v74 resultPromise:0];

  [(MCMCommandOperationReclaimDiskSpace *)v75 execute];
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
  v80 = [(MCMCommand *)self resultPromise];
  [v80 completeWithResult:v79];

  objc_autoreleasePoolPop(context);
  v81 = *MEMORY[0x1E69E9840];
}

- (BOOL)preflightClientAllowed
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [(MCMCommand *)self context];
  v3 = [v2 clientIdentity];
  v4 = [v3 isAllowedToReplaceContainers];

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (MCMCommandReplaceContainer)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v16.receiver = self;
  v16.super_class = MCMCommandReplaceContainer;
  v9 = [(MCMCommand *)&v16 initWithMessage:v8 context:a4 reply:a5];
  if (v9)
  {
    v10 = [v8 containerIdentityOld];
    containerIdentityOld = v9->_containerIdentityOld;
    v9->_containerIdentityOld = v10;

    v12 = [v8 containerIdentityNew];
    containerIdentityNew = v9->_containerIdentityNew;
    v9->_containerIdentityNew = v12;

    v9->_asyncReclaim = 1;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (id)_readAndValidateReplaceFileAtUrl:(id)a3 error:(id *)a4
{
  v63 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v54 = 0;
  v6 = [MEMORY[0x1E695DF90] MCM_dictionaryWithContentsOfURL:v5 options:1 error:&v54];
  v7 = v54;
  v52 = v7;
  v53 = v5;
  if (!v6)
  {
    v10 = [[MCMError alloc] initWithNSError:v7 url:v5 defaultErrorType:35];
    v11 = container_log_handle_for_category();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_23:
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
LABEL_24:

      if (a4)
      {
        v26 = v10;
        v8 = 0;
        *a4 = v10;
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

    v12 = [v5 path];
    *buf = 138412290;
    v56 = v12;
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

    v12 = [v8 objectForKeyedSubscript:@"MCMReplaceOperationOldURL"];
    v33 = [v8 objectForKeyedSubscript:@"MCMReplaceOperationNewURL"];
    v34 = [v8 objectForKeyedSubscript:@"MCMReplaceOperationStagingURL"];
    v35 = [v8 objectForKeyedSubscript:@"MCMReplaceOperationDestURL"];
    *buf = 138413058;
    v56 = v12;
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

  v51 = a4;
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
      v50 = [v25 path];
      v46 = [v24 path];
      v47 = [v23 path];
      v48 = [v22 path];
      *buf = 138413058;
      v56 = v50;
      v57 = 2112;
      v58 = v46;
      v59 = 2112;
      v60 = v47;
      v61 = 2112;
      v62 = v48;
      v49 = v48;
      _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "Invalid replace data: Old: %@, New: %@, Staging: %@, Dest: %@", buf, 0x2Au);
    }

    a4 = v51;
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

+ (BOOL)recoverFromReplaceOperationsWithContext:(id)a3 error:(id *)a4
{
  v82 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = containermanager_copy_global_configuration();
  v8 = [v7 managedPathRegistry];
  v9 = [v8 containermanagerReplaceOperations];

  v10 = [v9 url];
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
      v14 = v12;
      v66 = [v14 countByEnumeratingWithState:&v78 objects:v77 count:16];
      if (v66)
      {
        v56 = v12;
        v57 = a4;
        v63 = v13;
        v58 = v10;
        v59 = v9;
        v60 = v6;
        v62 = 0;
        v15 = 0;
        v65 = *v79;
        p_superclass = &OBJC_METACLASS___MCMCommandQuery.superclass;
        obj = v14;
        v61 = a1;
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
          v19 = [a1 _readAndValidateReplaceFileAtUrl:v18 error:&v69];
          v20 = v69;

          v21 = container_log_handle_for_category();
          v22 = v21;
          if (v19)
          {
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              v36 = [v18 path];
              *buf = 138412546;
              v72 = v36;
              v73 = 2112;
              v74 = v19;
              _os_log_debug_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_DEBUG, "Doing a replace of %@ with info: %@", buf, 0x16u);
            }

            v22 = [p_superclass + 409 defaultManager];
            v23 = [(MCMError *)v19 objectForKeyedSubscript:@"MCMReplaceOperationOldURL"];
            if (![v22 itemExistsAtURL:v23])
            {
              v24 = [p_superclass + 409 defaultManager];
              v25 = [(MCMError *)v19 objectForKeyedSubscript:@"MCMReplaceOperationDestURL"];
              v26 = [v24 itemExistsAtURL:v25];

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
                a1 = v61;
              }

              p_superclass = (&OBJC_METACLASS___MCMCommandQuery + 8);
              goto LABEL_22;
            }
          }

          else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v37 = [v18 path];
            *buf = 138412546;
            v72 = v37;
            v73 = 2112;
            v74 = v20;
            _os_log_error_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_ERROR, "Pending replace operation found, but not valid at [%@], ignoring: %@", buf, 0x16u);
          }

LABEL_22:
          v33 = +[MCMCommandContext privileged];
          v34 = [v33 containerFactory];
          v67 = v20;
          v35 = [v34 deleteURL:v18 forUserIdentity:0 error:&v67];
          v15 = v67;

          if ((v35 & 1) == 0)
          {
            v45 = container_log_handle_for_category();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              v53 = [v18 path];
              *buf = 138412546;
              v72 = v53;
              v73 = 2112;
              v74 = v15;
              _os_log_error_impl(&dword_1DF2C3000, v45, OS_LOG_TYPE_ERROR, "Failed to remove replace file at %@; error = %@", buf, 0x16u);
            }

            v32 = v63;
LABEL_37:
            v9 = v59;
            v6 = v60;
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
              v6 = v60;
              v14 = [v60 containerCache];
              [v14 flush];
              v10 = v58;
              v9 = v59;
              v13 = v63;
              v12 = v56;
              a4 = v57;
              goto LABEL_42;
            }

            v9 = v59;
            v6 = v60;
            a4 = v57;
            v10 = v58;
            v13 = v63;
            v12 = v56;
            if (!v57)
            {
LABEL_44:
              v41 = 1;
              v42 = v12;
              goto LABEL_45;
            }

LABEL_43:
            v46 = v15;
            *a4 = v15;
            goto LABEL_44;
          }
        }
      }
    }

    else
    {
      v43 = [(MCMError *)v13 domain];
      if ([v43 isEqualToString:*MEMORY[0x1E696A798]])
      {
        v44 = [(MCMError *)v13 code];

        if (v44 == 2)
        {
          v15 = 0;
          if (!a4)
          {
            goto LABEL_44;
          }

          goto LABEL_43;
        }
      }

      else
      {
      }

      v14 = container_log_handle_for_category();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v54 = [v9 url];
        v55 = [v54 path];
        *buf = 138412546;
        v72 = v55;
        v73 = 2112;
        v74 = v13;
        _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "Failed to get items at replace URL %@ : %@", buf, 0x16u);
      }
    }

    v15 = 0;
LABEL_42:

    if (!a4)
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