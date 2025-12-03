@interface MRPlaybackQueueParticipant
+ (id)expectedIdentifierForUserIdentity:(id)identity withRandomData:(id)data;
+ (void)fetchParticipantsWithRequest:(id)request forPlayerPath:(id)path queue:(id)queue completion:(id)completion;
+ (void)fetchPlaybackQueueParticipantIdentifierForLocalAccountWithDSID:(id)d completion:(id)completion;
- (MRPlaybackQueueParticipant)initWithIdentifier:(id)identifier identity:(id)identity;
- (MRPlaybackQueueParticipant)initWithProtobuf:(id)protobuf;
- (MRPlaybackQueueParticipant)initWithProtobufData:(id)data;
- (NSData)protobufData;
- (NSDictionary)dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)protobufWithEncoding:(int64_t)encoding;
@end

@implementation MRPlaybackQueueParticipant

- (MRPlaybackQueueParticipant)initWithIdentifier:(id)identifier identity:(id)identity
{
  identifierCopy = identifier;
  identityCopy = identity;
  v12.receiver = self;
  v12.super_class = MRPlaybackQueueParticipant;
  v9 = [(MRPlaybackQueueParticipant *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identity, identity);
    objc_storeStrong(&v10->_identifier, identifier);
  }

  return v10;
}

- (MRPlaybackQueueParticipant)initWithProtobuf:(id)protobuf
{
  if (protobuf)
  {
    protobufCopy = protobuf;
    identifier = [protobufCopy identifier];
    v6 = [MRUserIdentity alloc];
    identity = [protobufCopy identity];

    v8 = [(MRUserIdentity *)v6 initWithProtobuf:identity];
    self = [(MRPlaybackQueueParticipant *)self initWithIdentifier:identifier identity:v8];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MRPlaybackQueueParticipant)initWithProtobufData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[_MRPlaybackQueueParticipantProtobuf alloc] initWithData:dataCopy];

    self = [(MRPlaybackQueueParticipant *)self initWithProtobuf:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)protobufWithEncoding:(int64_t)encoding
{
  v4 = objc_alloc_init(_MRPlaybackQueueParticipantProtobuf);
  identity = [(MRPlaybackQueueParticipant *)self identity];
  protobuf = [identity protobuf];
  [(_MRPlaybackQueueParticipantProtobuf *)v4 setIdentity:protobuf];

  identifier = [(MRPlaybackQueueParticipant *)self identifier];
  [(_MRPlaybackQueueParticipantProtobuf *)v4 setIdentifier:identifier];

  return v4;
}

- (NSData)protobufData
{
  v2 = [(MRPlaybackQueueParticipant *)self protobufWithEncoding:0];
  data = [v2 data];

  return data;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MRPlaybackQueueParticipant alloc];
  v5 = [(MRPlaybackQueueParticipant *)self protobufWithEncoding:0];
  v6 = [v5 copy];
  v7 = [(MRPlaybackQueueParticipant *)v4 initWithProtobuf:v6];

  return v7;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  identifier = [(MRPlaybackQueueParticipant *)self identifier];
  identity = [(MRPlaybackQueueParticipant *)self identity];
  v7 = [v3 initWithFormat:@"<%@: identifier=%@, identity=%@", v4, identifier, identity];

  return v7;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  identifier = [(MRPlaybackQueueParticipant *)self identifier];
  [v3 setObject:identifier forKeyedSubscript:@"identifier"];

  identity = [(MRPlaybackQueueParticipant *)self identity];
  [v3 setObject:identity forKeyedSubscript:@"identity"];

  return v3;
}

+ (void)fetchPlaybackQueueParticipantIdentifierForLocalAccountWithDSID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v7 = MRGetSharedService();
  v8 = MRGroupSessionSubsystemGetNotificationQueue();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __104__MRPlaybackQueueParticipant_fetchPlaybackQueueParticipantIdentifierForLocalAccountWithDSID_completion___block_invoke;
  v10[3] = &unk_1E769EA10;
  v11 = completionCopy;
  v9 = completionCopy;
  [v7 userIdentityForDSID:dCopy queue:v8 completion:v10];
}

void __104__MRPlaybackQueueParticipant_fetchPlaybackQueueParticipantIdentifierForLocalAccountWithDSID_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    v6 = [MRPlaybackQueueParticipant expectedIdentifierForUserIdentity:a2 withRandomData:0];
    (*(v3 + 16))(v3, v6, v5);
  }
}

+ (void)fetchParticipantsWithRequest:(id)request forPlayerPath:(id)path queue:(id)queue completion:(id)completion
{
  requestCopy = request;
  queueCopy = queue;
  completionCopy = completion;
  v12 = MEMORY[0x1E696AFB0];
  pathCopy = path;
  uUID = [v12 UUID];
  uUIDString = [uUID UUIDString];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __90__MRPlaybackQueueParticipant_fetchParticipantsWithRequest_forPlayerPath_queue_completion___block_invoke;
  v20[3] = &unk_1E769EA38;
  v21 = queueCopy;
  v22 = uUIDString;
  v23 = requestCopy;
  v24 = completionCopy;
  v16 = requestCopy;
  v17 = uUIDString;
  v18 = completionCopy;
  v19 = queueCopy;
  MRMediaRemoteNowPlayingResolvePlayerPath(pathCopy, v19, v20);
}

void __90__MRPlaybackQueueParticipant_fetchParticipantsWithRequest_forPlayerPath_queue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (![v5 isResolved])
  {
    if (v6)
    {
      Error = 0;
    }

    else
    {
      Error = MRMediaRemoteNowPlayingPlayerPathCreateError(v5);
    }

    v17 = *(a1 + 32);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __90__MRPlaybackQueueParticipant_fetchParticipantsWithRequest_forPlayerPath_queue_completion___block_invoke_22;
    v19[3] = &unk_1E769AC18;
    v22 = *(a1 + 56);
    v20 = v6;
    v21 = Error;
    v11 = Error;
    dispatch_async(v17, v19);

    v14 = v22;
LABEL_11:

    goto LABEL_12;
  }

  v7 = [v5 client];
  v8 = [v7 isSystemMediaApplication];

  if (v8)
  {
    v9 = _MRLogForCategory(0xCuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      *buf = 138412546;
      v29 = v10;
      v30 = 2112;
      v31 = v5;
      _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "[MRPlaybackQueueParticipantRequest]<%@> for playerPath: %@", buf, 0x16u);
    }

    v11 = MRGetSharedService();
    v12 = *(a1 + 32);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __90__MRPlaybackQueueParticipant_fetchParticipantsWithRequest_forPlayerPath_queue_completion___block_invoke_20;
    v23[3] = &unk_1E769E2A8;
    v13 = *(a1 + 48);
    v24 = *(a1 + 40);
    v25 = *(a1 + 56);
    [v11 fetchParticipantsWithRequest:v13 playerPath:v5 queue:v12 completion:v23];

    v14 = v24;
    goto LABEL_11;
  }

  v16 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__MRPlaybackQueueParticipant_fetchParticipantsWithRequest_forPlayerPath_queue_completion___block_invoke_2;
  block[3] = &unk_1E769AD58;
  v27 = *(a1 + 56);
  dispatch_async(v16, block);
  v11 = v27;
LABEL_12:

  v18 = *MEMORY[0x1E69E9840];
}

void __90__MRPlaybackQueueParticipant_fetchParticipantsWithRequest_forPlayerPath_queue_completion___block_invoke_20(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = _MRLogForCategory(0xCuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = v5;
    }

    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "[MRPlaybackQueueParticipantRequest]<%@> Response: %@", &v11, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __90__MRPlaybackQueueParticipant_fetchParticipantsWithRequest_forPlayerPath_queue_completion___block_invoke_22(void *a1)
{
  v2 = a1[6];
  v3 = a1[4];
  if (!v3)
  {
    v3 = a1[5];
  }

  return (*(v2 + 16))(v2, 0, v3);
}

+ (id)expectedIdentifierForUserIdentity:(id)identity withRandomData:(id)data
{
  v70[0] = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  dataCopy = data;
  identifier = [identityCopy identifier];
  v8 = identifier;
  if (dataCopy)
  {
    v9 = [identifier stringByAppendingString:dataCopy];

    v8 = v9;
  }

  v10 = v8;
  memset(v64, 0, sizeof(v64));
  CC_SHA1_Init(v64);
  v11 = v10;
  CC_SHA1_Update(v64, [v11 UTF8String], objc_msgSend(v11, "length"));

  memset(&v65[8], 0, 64);
  *v65 = 4001;
  CC_SHA1_Final(&v65[8], v64);
  v66[0] = *v65;
  v66[1] = *&v65[16];
  v66[2] = *&v65[32];
  v66[3] = *&v65[48];
  v67 = *&v65[64];
  if (*v65 > 3999)
  {
    if (*v65 > 4255)
    {
      if (*v65 == 4256)
      {
        v52 = v66 + 8;
        v53 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
        v54 = v53;
        for (i = 0; i != 64; i += 2)
        {
          v56 = *v52++;
          v57 = &v53[i];
          *v57 = MSVFastHexStringFromBytes_hexCharacters_0[v56 >> 4];
          v57[1] = MSVFastHexStringFromBytes_hexCharacters_0[v56 & 0xF];
        }

        v24 = objc_alloc(MEMORY[0x1E696AEC0]);
        v25 = v54;
        v26 = 64;
      }

      else
      {
        if (*v65 != 4512)
        {
          goto LABEL_52;
        }

        v31 = v66 + 8;
        v32 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
        v33 = v32;
        for (j = 0; j != 128; j += 2)
        {
          v35 = *v31++;
          v36 = &v32[j];
          *v36 = MSVFastHexStringFromBytes_hexCharacters_0[v35 >> 4];
          v36[1] = MSVFastHexStringFromBytes_hexCharacters_0[v35 & 0xF];
        }

        v24 = objc_alloc(MEMORY[0x1E696AEC0]);
        v25 = v33;
        v26 = 128;
      }
    }

    else if (*v65 == 4000)
    {
      v42 = v66 + 8;
      v43 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
      v44 = v43;
      for (k = 0; k != 32; k += 2)
      {
        v46 = *v42++;
        v47 = &v43[k];
        *v47 = MSVFastHexStringFromBytes_hexCharacters_0[v46 >> 4];
        v47[1] = MSVFastHexStringFromBytes_hexCharacters_0[v46 & 0xF];
      }

      v24 = objc_alloc(MEMORY[0x1E696AEC0]);
      v25 = v44;
      v26 = 32;
    }

    else
    {
      if (*v65 != 4001)
      {
        goto LABEL_52;
      }

      v18 = v66 + 8;
      v19 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
      v20 = v19;
      for (m = 0; m != 40; m += 2)
      {
        v22 = *v18++;
        v23 = &v19[m];
        *v23 = MSVFastHexStringFromBytes_hexCharacters_0[v22 >> 4];
        v23[1] = MSVFastHexStringFromBytes_hexCharacters_0[v22 & 0xF];
      }

      v24 = objc_alloc(MEMORY[0x1E696AEC0]);
      v25 = v20;
      v26 = 40;
    }

LABEL_47:
    v58 = [v24 initWithBytesNoCopy:v25 length:v26 encoding:4 freeWhenDone:{1, 4001, *v64}];
LABEL_48:
    v59 = v58;
    goto LABEL_49;
  }

  if (*v65 > 2999)
  {
    if (*v65 == 3000)
    {
      LODWORD(v68[0]) = bswap32(DWORD2(v66[0]));
      v48 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
      v49 = 0;
      v50 = v48 + 1;
      do
      {
        v51 = *(v68 + v49);
        *(v50 - 1) = MSVFastHexStringFromBytes_hexCharacters_0[v51 >> 4];
        *v50 = MSVFastHexStringFromBytes_hexCharacters_0[v51 & 0xF];
        v50 += 2;
        ++v49;
      }

      while (v49 != 4);
      v24 = objc_alloc(MEMORY[0x1E696AEC0]);
      v25 = v48;
      v26 = 8;
    }

    else
    {
      if (*v65 != 3001)
      {
        goto LABEL_52;
      }

      v68[0] = bswap64(*(&v66[0] + 1));
      v27 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
      v28 = 0;
      v29 = v27 + 1;
      do
      {
        v30 = *(v68 + v28);
        *(v29 - 1) = MSVFastHexStringFromBytes_hexCharacters_0[v30 >> 4];
        *v29 = MSVFastHexStringFromBytes_hexCharacters_0[v30 & 0xF];
        v29 += 2;
        ++v28;
      }

      while (v28 != 8);
      v24 = objc_alloc(MEMORY[0x1E696AEC0]);
      v25 = v27;
      v26 = 16;
    }

    goto LABEL_47;
  }

  if (*v65 == 1000)
  {
    v37 = *(&v66[0] + 1);
    if (*(&v66[0] + 1))
    {
      v38 = &v69;
      quot = *(&v66[0] + 1);
      do
      {
        v40 = lldiv(quot, 10);
        quot = v40.quot;
        if (v40.rem >= 0)
        {
          LOBYTE(v41) = v40.rem;
        }

        else
        {
          v41 = -v40.rem;
        }

        *v38-- = v41 + 48;
      }

      while (v40.quot);
      if (v37 < 0)
      {
        *v38 = 45;
      }

      else
      {
        ++v38;
      }

      v16 = v70 - v38;
      v17 = v38;
      goto LABEL_56;
    }

    goto LABEL_53;
  }

  if (*v65 != 2000)
  {
LABEL_52:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v63 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
    [currentHandler handleFailureInFunction:v63 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

    v59 = &stru_1F1513E38;
    goto LABEL_49;
  }

  v12 = DWORD2(v66[0]);
  if (DWORD2(v66[0]))
  {
    v13 = 0;
    do
    {
      v14 = ldiv(v12, 10);
      v12 = v14.quot;
      if (v14.rem >= 0)
      {
        LOBYTE(v15) = v14.rem;
      }

      else
      {
        v15 = -v14.rem;
      }

      *(&v69 + v13--) = v15 + 48;
    }

    while (v14.quot);
    v16 = -v13;
    v17 = v70 + v13;
LABEL_56:
    v58 = CFStringCreateWithBytes(0, v17, v16, 0x8000100u, 0);
    goto LABEL_48;
  }

LABEL_53:
  v59 = @"0";
LABEL_49:

  v60 = *MEMORY[0x1E69E9840];

  return v59;
}

@end