@interface CDMClientSetup
- (CDMClientSetup)initWithCoder:(id)a3;
- (CDMClientSetup)initWithLocaleIdentifier:(id)a3 sandboxId:(id)a4 activeServiceGraph:(id)a5 assetDirPath:(id)a6 overrideSiriVocabSpans:(id)a7 serviceStateDirectory:(id)a8 embeddingVersion:(id)a9 nlSetupId:(id)a10 invocationSource:(id)a11 shouldPerformWarmup:(BOOL)a12 deallocationTimeout:(id)a13;
- (id)description;
- (void)createSandboxExtensionForXPC;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CDMClientSetup

- (void)createSandboxExtensionForXPC
{
  v15 = *MEMORY[0x1E69E9840];
  serviceStateDirectory = self->_serviceStateDirectory;
  if (!serviceStateDirectory || self->_serviceStateDirectorySandboxExtension)
  {
LABEL_3:
    v4 = *MEMORY[0x1E69E9840];
    return;
  }

  [(NSString *)serviceStateDirectory fileSystemRepresentation];
  v5 = sandbox_extension_issue_file();
  if (!v5)
  {
    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = self->_serviceStateDirectory;
      *buf = 136315394;
      v12 = "[CDMClientSetup createSandboxExtensionForXPC]";
      v13 = 2112;
      v14 = v10;
      _os_log_error_impl(&dword_1DC287000, v9, OS_LOG_TYPE_ERROR, "%s [ERR]: Failed to create sandbox extension for %@", buf, 0x16u);
    }

    goto LABEL_3;
  }

  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:v5 encoding:4];
  serviceStateDirectorySandboxExtension = self->_serviceStateDirectorySandboxExtension;
  self->_serviceStateDirectorySandboxExtension = v6;
  v8 = *MEMORY[0x1E69E9840];

  MEMORY[0x1EEE66BB8]();
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NSUUID *)self->_nlSetupId UUIDString];
  v5 = v4;
  v6 = @"YES";
  if (self->_serviceStateDirectorySandboxExtension)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if (!self->_shouldPerformWarmup)
  {
    v6 = @"NO";
  }

  v8 = [v3 stringWithFormat:@"[CDMClientSetup] - nlSetupId: %@, Language identifier: %@, Sandbox ID: %@, Graph Name: %@, Asset Dir Path: %@, Override Siri Vocabulary Spans: %@, Service State Directory: %@, Has Sandbox Extension: %@, Should Perform Warmup: %@, Deallocation Timeout: %@", v4, self->_localeIdentifier, self->_sandboxId, self->_activeServiceGraph, self->_assetDirPath, self->_overrideSiriVocabSpans, self->_serviceStateDirectory, v7, v6, self->_deallocationTimeout];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  localeIdentifier = self->_localeIdentifier;
  v5 = a3;
  [v5 encodeObject:localeIdentifier forKey:@"localeIdentifier"];
  [v5 encodeObject:self->_sandboxId forKey:@"sandboxId"];
  [v5 encodeObject:self->_activeServiceGraph forKey:@"activeServiceGraph"];
  [v5 encodeObject:self->_assetDirPath forKey:@"assetDirPath"];
  [v5 encodeObject:self->_invocationSource forKey:@"invocationSource"];
  [v5 encodeObject:self->_overrideSiriVocabSpans forKey:@"overrideSiriVocabSpans"];
  [v5 encodeObject:self->_serviceStateDirectory forKey:@"serviceStateDirectory"];
  [v5 encodeObject:self->_embeddingVersion forKey:@"embeddingVersion"];
  [v5 encodeObject:self->_serviceStateDirectorySandboxExtension forKey:@"serviceStateDirectorySandboxExtension"];
  [v5 encodeObject:self->_nlSetupId forKey:@"nlSetupId"];
  [v5 encodeBool:self->_shouldPerformWarmup forKey:@"shouldPerformWarmup"];
  [v5 encodeObject:self->_deallocationTimeout forKey:@"deallocationTimeout"];
}

- (CDMClientSetup)initWithCoder:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = CDMClientSetup;
  v5 = [(CDMClientSetup *)&v32 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localeIdentifier"];
    localeIdentifier = v5->_localeIdentifier;
    v5->_localeIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sandboxId"];
    sandboxId = v5->_sandboxId;
    v5->_sandboxId = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activeServiceGraph"];
    activeServiceGraph = v5->_activeServiceGraph;
    v5->_activeServiceGraph = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetDirPath"];
    assetDirPath = v5->_assetDirPath;
    v5->_assetDirPath = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"invocationSource"];
    invocationSource = v5->_invocationSource;
    v5->_invocationSource = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nlSetupId"];
    nlSetupId = v5->_nlSetupId;
    v5->_nlSetupId = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"overrideSiriVocabSpans"];
    overrideSiriVocabSpans = v5->_overrideSiriVocabSpans;
    v5->_overrideSiriVocabSpans = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceStateDirectory"];
    serviceStateDirectory = v5->_serviceStateDirectory;
    v5->_serviceStateDirectory = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"embeddingVersion"];
    embeddingVersion = v5->_embeddingVersion;
    v5->_embeddingVersion = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceStateDirectorySandboxExtension"];
    serviceStateDirectorySandboxExtension = v5->_serviceStateDirectorySandboxExtension;
    v5->_serviceStateDirectorySandboxExtension = v27;

    v5->_shouldPerformWarmup = [v4 decodeBoolForKey:@"shouldPerformWarmup"];
    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deallocationTimeout"];
    deallocationTimeout = v5->_deallocationTimeout;
    v5->_deallocationTimeout = v29;
  }

  return v5;
}

- (CDMClientSetup)initWithLocaleIdentifier:(id)a3 sandboxId:(id)a4 activeServiceGraph:(id)a5 assetDirPath:(id)a6 overrideSiriVocabSpans:(id)a7 serviceStateDirectory:(id)a8 embeddingVersion:(id)a9 nlSetupId:(id)a10 invocationSource:(id)a11 shouldPerformWarmup:(BOOL)a12 deallocationTimeout:(id)a13
{
  v34 = a3;
  obj = a4;
  v33 = a4;
  v28 = a5;
  v32 = a5;
  v31 = a6;
  v30 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v23 = a13;
  v35.receiver = self;
  v35.super_class = CDMClientSetup;
  v24 = [(CDMClientSetup *)&v35 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_localeIdentifier, a3);
    objc_storeStrong(&v25->_sandboxId, obj);
    objc_storeStrong(&v25->_activeServiceGraph, v28);
    objc_storeStrong(&v25->_assetDirPath, a6);
    objc_storeStrong(&v25->_overrideSiriVocabSpans, a7);
    objc_storeStrong(&v25->_embeddingVersion, a9);
    objc_storeStrong(&v25->_serviceStateDirectory, a8);
    objc_storeStrong(&v25->_invocationSource, a11);
    objc_storeStrong(&v25->_nlSetupId, a10);
    v25->_shouldPerformWarmup = a12;
    objc_storeStrong(&v25->_deallocationTimeout, a13);
  }

  return v25;
}

@end