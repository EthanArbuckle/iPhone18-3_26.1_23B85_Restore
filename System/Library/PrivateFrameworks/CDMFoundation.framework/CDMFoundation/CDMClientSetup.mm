@interface CDMClientSetup
- (CDMClientSetup)initWithCoder:(id)coder;
- (CDMClientSetup)initWithLocaleIdentifier:(id)identifier sandboxId:(id)id activeServiceGraph:(id)graph assetDirPath:(id)path overrideSiriVocabSpans:(id)spans serviceStateDirectory:(id)directory embeddingVersion:(id)version nlSetupId:(id)self0 invocationSource:(id)self1 shouldPerformWarmup:(BOOL)self2 deallocationTimeout:(id)self3;
- (id)description;
- (void)createSandboxExtensionForXPC;
- (void)encodeWithCoder:(id)coder;
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
  uUIDString = [(NSUUID *)self->_nlSetupId UUIDString];
  v5 = uUIDString;
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

  v8 = [v3 stringWithFormat:@"[CDMClientSetup] - nlSetupId: %@, Language identifier: %@, Sandbox ID: %@, Graph Name: %@, Asset Dir Path: %@, Override Siri Vocabulary Spans: %@, Service State Directory: %@, Has Sandbox Extension: %@, Should Perform Warmup: %@, Deallocation Timeout: %@", uUIDString, self->_localeIdentifier, self->_sandboxId, self->_activeServiceGraph, self->_assetDirPath, self->_overrideSiriVocabSpans, self->_serviceStateDirectory, v7, v6, self->_deallocationTimeout];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  localeIdentifier = self->_localeIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:localeIdentifier forKey:@"localeIdentifier"];
  [coderCopy encodeObject:self->_sandboxId forKey:@"sandboxId"];
  [coderCopy encodeObject:self->_activeServiceGraph forKey:@"activeServiceGraph"];
  [coderCopy encodeObject:self->_assetDirPath forKey:@"assetDirPath"];
  [coderCopy encodeObject:self->_invocationSource forKey:@"invocationSource"];
  [coderCopy encodeObject:self->_overrideSiriVocabSpans forKey:@"overrideSiriVocabSpans"];
  [coderCopy encodeObject:self->_serviceStateDirectory forKey:@"serviceStateDirectory"];
  [coderCopy encodeObject:self->_embeddingVersion forKey:@"embeddingVersion"];
  [coderCopy encodeObject:self->_serviceStateDirectorySandboxExtension forKey:@"serviceStateDirectorySandboxExtension"];
  [coderCopy encodeObject:self->_nlSetupId forKey:@"nlSetupId"];
  [coderCopy encodeBool:self->_shouldPerformWarmup forKey:@"shouldPerformWarmup"];
  [coderCopy encodeObject:self->_deallocationTimeout forKey:@"deallocationTimeout"];
}

- (CDMClientSetup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = CDMClientSetup;
  v5 = [(CDMClientSetup *)&v32 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localeIdentifier"];
    localeIdentifier = v5->_localeIdentifier;
    v5->_localeIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sandboxId"];
    sandboxId = v5->_sandboxId;
    v5->_sandboxId = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activeServiceGraph"];
    activeServiceGraph = v5->_activeServiceGraph;
    v5->_activeServiceGraph = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetDirPath"];
    assetDirPath = v5->_assetDirPath;
    v5->_assetDirPath = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"invocationSource"];
    invocationSource = v5->_invocationSource;
    v5->_invocationSource = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nlSetupId"];
    nlSetupId = v5->_nlSetupId;
    v5->_nlSetupId = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"overrideSiriVocabSpans"];
    overrideSiriVocabSpans = v5->_overrideSiriVocabSpans;
    v5->_overrideSiriVocabSpans = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceStateDirectory"];
    serviceStateDirectory = v5->_serviceStateDirectory;
    v5->_serviceStateDirectory = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"embeddingVersion"];
    embeddingVersion = v5->_embeddingVersion;
    v5->_embeddingVersion = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceStateDirectorySandboxExtension"];
    serviceStateDirectorySandboxExtension = v5->_serviceStateDirectorySandboxExtension;
    v5->_serviceStateDirectorySandboxExtension = v27;

    v5->_shouldPerformWarmup = [coderCopy decodeBoolForKey:@"shouldPerformWarmup"];
    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deallocationTimeout"];
    deallocationTimeout = v5->_deallocationTimeout;
    v5->_deallocationTimeout = v29;
  }

  return v5;
}

- (CDMClientSetup)initWithLocaleIdentifier:(id)identifier sandboxId:(id)id activeServiceGraph:(id)graph assetDirPath:(id)path overrideSiriVocabSpans:(id)spans serviceStateDirectory:(id)directory embeddingVersion:(id)version nlSetupId:(id)self0 invocationSource:(id)self1 shouldPerformWarmup:(BOOL)self2 deallocationTimeout:(id)self3
{
  identifierCopy = identifier;
  obj = id;
  idCopy = id;
  graphCopy = graph;
  graphCopy2 = graph;
  pathCopy = path;
  spansCopy = spans;
  directoryCopy = directory;
  versionCopy = version;
  setupIdCopy = setupId;
  sourceCopy = source;
  timeoutCopy = timeout;
  v35.receiver = self;
  v35.super_class = CDMClientSetup;
  v24 = [(CDMClientSetup *)&v35 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_localeIdentifier, identifier);
    objc_storeStrong(&v25->_sandboxId, obj);
    objc_storeStrong(&v25->_activeServiceGraph, graphCopy);
    objc_storeStrong(&v25->_assetDirPath, path);
    objc_storeStrong(&v25->_overrideSiriVocabSpans, spans);
    objc_storeStrong(&v25->_embeddingVersion, version);
    objc_storeStrong(&v25->_serviceStateDirectory, directory);
    objc_storeStrong(&v25->_invocationSource, source);
    objc_storeStrong(&v25->_nlSetupId, setupId);
    v25->_shouldPerformWarmup = warmup;
    objc_storeStrong(&v25->_deallocationTimeout, timeout);
  }

  return v25;
}

@end