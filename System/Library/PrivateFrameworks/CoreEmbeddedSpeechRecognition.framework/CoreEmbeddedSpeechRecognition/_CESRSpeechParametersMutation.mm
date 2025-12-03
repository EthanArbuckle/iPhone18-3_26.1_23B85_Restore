@interface _CESRSpeechParametersMutation
- (_CESRSpeechParametersMutation)initWithBaseModel:(id)model;
- (id)generate;
@end

@implementation _CESRSpeechParametersMutation

- (id)generate
{
  baseModel = self->_baseModel;
  if (!baseModel)
  {
    v6 = [CESRSpeechParameters alloc];
    LOBYTE(v30) = self->_shouldGenerateVoiceCommandCandidates;
    BYTE4(v29) = self->_enableVoiceCommands;
    LODWORD(v29) = *&self->_deliverEagerPackage;
    LOBYTE(v28) = self->_isSpeechAPIRequest;
    v5 = [CESRSpeechParameters initWithLanguage:v6 requestIdentifier:"initWithLanguage:requestIdentifier:dictationUIInteractionIdentifier:task:loggingContext:applicationName:profile:overrides:modelOverrideURL:originalAudioFileURL:codec:narrowband:detectUtterances:censorSpeech:farField:secureOfflineOnly:shouldStoreAudioOnDevice:continuousListening:shouldHandleCapitalization:isSpeechAPIRequest:maximumRecognitionDuration:endpointStart:inputOrigin:location:jitGrammar:deliverEagerPackage:disableDeliveringAsrFeatures:enableEmojiRecognition:enableAutoPunctuation:enableVoiceCommands:sharedUserInfos:prefixText:postfixText:selectedText:powerContext:recognitionStart:shouldGenerateVoiceCommandCandidates:asrId:activeUserInfo:messagesContext:" dictationUIInteractionIdentifier:self->_language task:self->_requestIdentifier loggingContext:self->_dictationUIInteractionIdentifier applicationName:self->_task profile:self->_loggingContext overrides:self->_applicationName modelOverrideURL:self->_maximumRecognitionDuration originalAudioFileURL:self->_endpointStart codec:self->_recognitionStart narrowband:self->_profile detectUtterances:self->_overrides censorSpeech:self->_modelOverrideURL farField:self->_originalAudioFileURL secureOfflineOnly:self->_codec shouldStoreAudioOnDevice:*&self->_narrowband continuousListening:v28 shouldHandleCapitalization:self->_inputOrigin isSpeechAPIRequest:self->_location maximumRecognitionDuration:self->_jitGrammar endpointStart:v29 inputOrigin:self->_sharedUserInfos location:self->_prefixText jitGrammar:self->_postfixText deliverEagerPackage:self->_selectedText disableDeliveringAsrFeatures:self->_powerContext enableEmojiRecognition:v30 enableAutoPunctuation:self->_asrId enableVoiceCommands:self->_activeUserInfo sharedUserInfos:self->_messagesContext prefixText:? postfixText:? selectedText:? powerContext:? recognitionStart:? shouldGenerateVoiceCommandCandidates:? asrId:? activeUserInfo:? messagesContext:?];
    goto LABEL_5;
  }

  v4 = *&self->_mutationFlags;
  if (v4)
  {
    if ((v4 & 2) != 0)
    {
      language = self->_language;
    }

    else
    {
      language = [(CESRSpeechParameters *)baseModel language];
    }

    if ((*&self->_mutationFlags & 4) != 0)
    {
      requestIdentifier = self->_requestIdentifier;
    }

    else
    {
      requestIdentifier = [(CESRSpeechParameters *)self->_baseModel requestIdentifier];
    }

    if ((*&self->_mutationFlags & 8) != 0)
    {
      dictationUIInteractionIdentifier = self->_dictationUIInteractionIdentifier;
    }

    else
    {
      dictationUIInteractionIdentifier = [(CESRSpeechParameters *)self->_baseModel dictationUIInteractionIdentifier];
    }

    if ((*&self->_mutationFlags & 0x10) != 0)
    {
      task = self->_task;
    }

    else
    {
      task = [(CESRSpeechParameters *)self->_baseModel task];
    }

    if ((*&self->_mutationFlags & 0x20) != 0)
    {
      loggingContext = self->_loggingContext;
    }

    else
    {
      loggingContext = [(CESRSpeechParameters *)self->_baseModel loggingContext];
    }

    if ((*&self->_mutationFlags & 0x40) != 0)
    {
      applicationName = self->_applicationName;
    }

    else
    {
      applicationName = [(CESRSpeechParameters *)self->_baseModel applicationName];
    }

    if ((*&self->_mutationFlags & 0x80) != 0)
    {
      profile = self->_profile;
    }

    else
    {
      profile = [(CESRSpeechParameters *)self->_baseModel profile];
    }

    if (*(&self->_mutationFlags + 1))
    {
      overrides = self->_overrides;
    }

    else
    {
      overrides = [(CESRSpeechParameters *)self->_baseModel overrides];
    }

    if ((*(&self->_mutationFlags + 1) & 2) != 0)
    {
      modelOverrideURL = self->_modelOverrideURL;
    }

    else
    {
      modelOverrideURL = [(CESRSpeechParameters *)self->_baseModel modelOverrideURL];
    }

    if ((*(&self->_mutationFlags + 1) & 4) != 0)
    {
      originalAudioFileURL = self->_originalAudioFileURL;
    }

    else
    {
      originalAudioFileURL = [(CESRSpeechParameters *)self->_baseModel originalAudioFileURL];
    }

    if ((*(&self->_mutationFlags + 1) & 8) != 0)
    {
      codec = self->_codec;
    }

    else
    {
      codec = [(CESRSpeechParameters *)self->_baseModel codec];
    }

    v8 = *&self->_mutationFlags;
    if ((v8 & 0x1000) != 0)
    {
      narrowband = self->_narrowband;
      if ((v8 & 0x2000) != 0)
      {
LABEL_41:
        detectUtterances = self->_detectUtterances;
        if ((v8 & 0x4000) != 0)
        {
          goto LABEL_42;
        }

        goto LABEL_54;
      }
    }

    else
    {
      narrowband = [(CESRSpeechParameters *)self->_baseModel narrowband];
      v8 = *&self->_mutationFlags;
      if ((v8 & 0x2000) != 0)
      {
        goto LABEL_41;
      }
    }

    detectUtterances = [(CESRSpeechParameters *)self->_baseModel detectUtterances];
    v8 = *&self->_mutationFlags;
    if ((v8 & 0x4000) != 0)
    {
LABEL_42:
      censorSpeech = self->_censorSpeech;
      if ((v8 & 0x8000) != 0)
      {
        goto LABEL_43;
      }

      goto LABEL_55;
    }

LABEL_54:
    censorSpeech = [(CESRSpeechParameters *)self->_baseModel censorSpeech];
    v8 = *&self->_mutationFlags;
    if ((v8 & 0x8000) != 0)
    {
LABEL_43:
      farField = self->_farField;
      if ((v8 & 0x10000) != 0)
      {
        goto LABEL_44;
      }

      goto LABEL_56;
    }

LABEL_55:
    farField = [(CESRSpeechParameters *)self->_baseModel farField];
    v8 = *&self->_mutationFlags;
    if ((v8 & 0x10000) != 0)
    {
LABEL_44:
      secureOfflineOnly = self->_secureOfflineOnly;
      if ((v8 & 0x20000) != 0)
      {
        goto LABEL_45;
      }

      goto LABEL_57;
    }

LABEL_56:
    secureOfflineOnly = [(CESRSpeechParameters *)self->_baseModel secureOfflineOnly];
    v8 = *&self->_mutationFlags;
    if ((v8 & 0x20000) != 0)
    {
LABEL_45:
      shouldStoreAudioOnDevice = self->_shouldStoreAudioOnDevice;
      if ((v8 & 0x40000) != 0)
      {
        goto LABEL_46;
      }

      goto LABEL_58;
    }

LABEL_57:
    shouldStoreAudioOnDevice = [(CESRSpeechParameters *)self->_baseModel shouldStoreAudioOnDevice];
    v8 = *&self->_mutationFlags;
    if ((v8 & 0x40000) != 0)
    {
LABEL_46:
      continuousListening = self->_continuousListening;
      if ((v8 & 0x80000) != 0)
      {
        goto LABEL_47;
      }

      goto LABEL_59;
    }

LABEL_58:
    continuousListening = [(CESRSpeechParameters *)self->_baseModel continuousListening];
    v8 = *&self->_mutationFlags;
    if ((v8 & 0x80000) != 0)
    {
LABEL_47:
      shouldHandleCapitalization = self->_shouldHandleCapitalization;
      if ((v8 & 0x100000) != 0)
      {
        goto LABEL_48;
      }

      goto LABEL_60;
    }

LABEL_59:
    shouldHandleCapitalization = [(CESRSpeechParameters *)self->_baseModel shouldHandleCapitalization];
    v8 = *&self->_mutationFlags;
    if ((v8 & 0x100000) != 0)
    {
LABEL_48:
      isSpeechAPIRequest = self->_isSpeechAPIRequest;
      if ((v8 & 0x200000) != 0)
      {
        goto LABEL_49;
      }

      goto LABEL_61;
    }

LABEL_60:
    isSpeechAPIRequest = [(CESRSpeechParameters *)self->_baseModel isSpeechAPIRequest];
    v8 = *&self->_mutationFlags;
    if ((v8 & 0x200000) != 0)
    {
LABEL_49:
      maximumRecognitionDuration = self->_maximumRecognitionDuration;
      if ((v8 & 0x400000) != 0)
      {
        goto LABEL_50;
      }

      goto LABEL_62;
    }

LABEL_61:
    [(CESRSpeechParameters *)self->_baseModel maximumRecognitionDuration];
    maximumRecognitionDuration = v11;
    v8 = *&self->_mutationFlags;
    if ((v8 & 0x400000) != 0)
    {
LABEL_50:
      endpointStart = self->_endpointStart;
      if ((v8 & 0x800000) != 0)
      {
LABEL_51:
        inputOrigin = self->_inputOrigin;
        goto LABEL_64;
      }

LABEL_63:
      inputOrigin = [(CESRSpeechParameters *)self->_baseModel inputOrigin];

LABEL_64:
      if (*(&self->_mutationFlags + 3))
      {
        location = self->_location;
      }

      else
      {
        location = [(CESRSpeechParameters *)self->_baseModel location];
      }

      if ((*(&self->_mutationFlags + 3) & 2) != 0)
      {
        jitGrammar = self->_jitGrammar;
      }

      else
      {
        jitGrammar = [(CESRSpeechParameters *)self->_baseModel jitGrammar];
      }

      v14 = *&self->_mutationFlags;
      if ((v14 & 0x4000000) != 0)
      {
        deliverEagerPackage = self->_deliverEagerPackage;
        if ((v14 & 0x8000000) != 0)
        {
LABEL_72:
          disableDeliveringAsrFeatures = self->_disableDeliveringAsrFeatures;
          if ((v14 & 0x10000000) != 0)
          {
            goto LABEL_73;
          }

          goto LABEL_79;
        }
      }

      else
      {
        deliverEagerPackage = [(CESRSpeechParameters *)self->_baseModel deliverEagerPackage];
        v14 = *&self->_mutationFlags;
        if ((v14 & 0x8000000) != 0)
        {
          goto LABEL_72;
        }
      }

      disableDeliveringAsrFeatures = [(CESRSpeechParameters *)self->_baseModel disableDeliveringAsrFeatures];
      v14 = *&self->_mutationFlags;
      if ((v14 & 0x10000000) != 0)
      {
LABEL_73:
        enableEmojiRecognition = self->_enableEmojiRecognition;
        if ((v14 & 0x20000000) != 0)
        {
          goto LABEL_74;
        }

        goto LABEL_80;
      }

LABEL_79:
      enableEmojiRecognition = [(CESRSpeechParameters *)self->_baseModel enableEmojiRecognition];
      v14 = *&self->_mutationFlags;
      if ((v14 & 0x20000000) != 0)
      {
LABEL_74:
        enableAutoPunctuation = self->_enableAutoPunctuation;
        if ((v14 & 0x40000000) != 0)
        {
          goto LABEL_75;
        }

        goto LABEL_81;
      }

LABEL_80:
      enableAutoPunctuation = [(CESRSpeechParameters *)self->_baseModel enableAutoPunctuation];
      v14 = *&self->_mutationFlags;
      if ((v14 & 0x40000000) != 0)
      {
LABEL_75:
        enableVoiceCommands = self->_enableVoiceCommands;
        if ((v14 & 0x80000000) != 0)
        {
LABEL_76:
          sharedUserInfos = self->_sharedUserInfos;
          goto LABEL_83;
        }

LABEL_82:
        sharedUserInfos = [(CESRSpeechParameters *)self->_baseModel sharedUserInfos];

LABEL_83:
        if (*(&self->_mutationFlags + 1))
        {
          prefixText = self->_prefixText;
        }

        else
        {
          prefixText = [(CESRSpeechParameters *)self->_baseModel prefixText];
        }

        if ((*(&self->_mutationFlags + 1) & 2) != 0)
        {
          postfixText = self->_postfixText;
        }

        else
        {
          postfixText = [(CESRSpeechParameters *)self->_baseModel postfixText];
        }

        if ((*(&self->_mutationFlags + 1) & 4) != 0)
        {
          selectedText = self->_selectedText;
        }

        else
        {
          selectedText = [(CESRSpeechParameters *)self->_baseModel selectedText];
        }

        if ((*(&self->_mutationFlags + 1) & 8) != 0)
        {
          powerContext = self->_powerContext;
        }

        else
        {
          powerContext = [(CESRSpeechParameters *)self->_baseModel powerContext];
        }

        v19 = *&self->_mutationFlags;
        if ((v19 & 0x1000000000) != 0)
        {
          recognitionStart = self->_recognitionStart;
          if ((v19 & 0x2000000000) != 0)
          {
LABEL_97:
            shouldGenerateVoiceCommandCandidates = self->_shouldGenerateVoiceCommandCandidates;
            if ((v19 & 0x4000000000) != 0)
            {
LABEL_98:
              asrId = self->_asrId;
LABEL_102:
              if ((*(&self->_mutationFlags + 1) & 0x80) != 0)
              {
                activeUserInfo = self->_activeUserInfo;
              }

              else
              {
                activeUserInfo = [(CESRSpeechParameters *)self->_baseModel activeUserInfo];
              }

              if (*(&self->_mutationFlags + 5))
              {
                messagesContext = self->_messagesContext;
              }

              else
              {
                messagesContext = [(CESRSpeechParameters *)self->_baseModel messagesContext];
              }

              LOBYTE(v30) = shouldGenerateVoiceCommandCandidates;
              BYTE4(v29) = enableVoiceCommands;
              BYTE3(v29) = enableAutoPunctuation;
              BYTE2(v29) = enableEmojiRecognition;
              BYTE1(v29) = disableDeliveringAsrFeatures;
              LOBYTE(v29) = deliverEagerPackage;
              LOBYTE(v28) = isSpeechAPIRequest;
              HIBYTE(v27) = shouldHandleCapitalization;
              BYTE6(v27) = continuousListening;
              BYTE5(v27) = shouldStoreAudioOnDevice;
              BYTE4(v27) = secureOfflineOnly;
              BYTE3(v27) = farField;
              BYTE2(v27) = censorSpeech;
              BYTE1(v27) = detectUtterances;
              LOBYTE(v27) = narrowband;
              v7 = [CESRSpeechParameters initWithLanguage:"initWithLanguage:requestIdentifier:dictationUIInteractionIdentifier:task:loggingContext:applicationName:profile:overrides:modelOverrideURL:originalAudioFileURL:codec:narrowband:detectUtterances:censorSpeech:farField:secureOfflineOnly:shouldStoreAudioOnDevice:continuousListening:shouldHandleCapitalization:isSpeechAPIRequest:maximumRecognitionDuration:endpointStart:inputOrigin:location:jitGrammar:deliverEagerPackage:disableDeliveringAsrFeatures:enableEmojiRecognition:enableAutoPunctuation:enableVoiceCommands:sharedUserInfos:prefixText:postfixText:selectedText:powerContext:recognitionStart:shouldGenerateVoiceCommandCandidates:asrId:activeUserInfo:messagesContext:" requestIdentifier:language dictationUIInteractionIdentifier:requestIdentifier task:dictationUIInteractionIdentifier loggingContext:task applicationName:loggingContext profile:applicationName overrides:maximumRecognitionDuration modelOverrideURL:endpointStart originalAudioFileURL:recognitionStart codec:profile narrowband:overrides detectUtterances:modelOverrideURL censorSpeech:originalAudioFileURL farField:codec secureOfflineOnly:v27 shouldStoreAudioOnDevice:v28 continuousListening:inputOrigin shouldHandleCapitalization:location isSpeechAPIRequest:jitGrammar maximumRecognitionDuration:v29 endpointStart:sharedUserInfos inputOrigin:prefixText location:postfixText jitGrammar:selectedText deliverEagerPackage:powerContext disableDeliveringAsrFeatures:v30 enableEmojiRecognition:asrId enableAutoPunctuation:activeUserInfo enableVoiceCommands:messagesContext sharedUserInfos:? prefixText:? postfixText:? selectedText:? powerContext:? recognitionStart:? shouldGenerateVoiceCommandCandidates:? asrId:? activeUserInfo:? messagesContext:?];

              goto LABEL_109;
            }

LABEL_101:
            asrId = [(CESRSpeechParameters *)self->_baseModel asrId];

            goto LABEL_102;
          }
        }

        else
        {
          [(CESRSpeechParameters *)self->_baseModel recognitionStart];
          recognitionStart = v20;
          v19 = *&self->_mutationFlags;
          if ((v19 & 0x2000000000) != 0)
          {
            goto LABEL_97;
          }
        }

        shouldGenerateVoiceCommandCandidates = [(CESRSpeechParameters *)self->_baseModel shouldGenerateVoiceCommandCandidates];
        if ((*&self->_mutationFlags & 0x4000000000) != 0)
        {
          goto LABEL_98;
        }

        goto LABEL_101;
      }

LABEL_81:
      enableVoiceCommands = [(CESRSpeechParameters *)self->_baseModel enableVoiceCommands];
      if ((*&self->_mutationFlags & 0x80000000) != 0)
      {
        goto LABEL_76;
      }

      goto LABEL_82;
    }

LABEL_62:
    [(CESRSpeechParameters *)self->_baseModel endpointStart];
    endpointStart = v12;
    if ((*&self->_mutationFlags & 0x800000) != 0)
    {
      goto LABEL_51;
    }

    goto LABEL_63;
  }

  v5 = [(CESRSpeechParameters *)baseModel copy];
LABEL_5:
  v7 = v5;
LABEL_109:

  return v7;
}

- (_CESRSpeechParametersMutation)initWithBaseModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = _CESRSpeechParametersMutation;
  v6 = [(_CESRSpeechParametersMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, model);
  }

  return v7;
}

@end