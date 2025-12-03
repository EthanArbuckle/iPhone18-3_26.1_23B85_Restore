@interface CSDiagnosticeExtension
- (id)_sortedAttachmentListWithPath:(id)path regularExpressionPatten:(id)patten;
- (id)attachmentsForParameters:(id)parameters;
@end

@implementation CSDiagnosticeExtension

- (id)_sortedAttachmentListWithPath:(id)path regularExpressionPatten:(id)patten
{
  pattenCopy = patten;
  v7 = [NSURL fileURLWithPath:path];
  v8 = [NSRegularExpression regularExpressionWithPattern:pattenCopy options:1 error:0];

  v9 = [(CSDiagnosticeExtension *)self filesInDir:v7 matchingPattern:v8 excludingPattern:0];

  v10 = [v9 sortedArrayUsingComparator:&stru_1000040F8];
  v11 = [v10 count];
  if (v11 >= 0xA)
  {
    v12 = 10;
  }

  else
  {
    v12 = v11;
  }

  v13 = [v10 subarrayWithRange:{0, v12}];

  return v13;
}

- (id)attachmentsForParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = +[NSMutableArray array];
  v6 = os_log_create("com.apple.corespeech", "DiagnosticExtension");
  v7 = [parametersCopy objectForKeyedSubscript:@"DEExtensionAttachmentsParamConsentProvidedKey"];

  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v7 BOOLValue])
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v16 = 136315394;
      v17 = "[CSDiagnosticeExtension attachmentsForParameters:]";
      v18 = 2112;
      v19 = @"Collecting 'CoreSpeech Logs'";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s %@", &v16, 0x16u);
    }

    if (qword_100008158 != -1)
    {
      dispatch_once(&qword_100008158, &stru_100004138);
    }

    if (byte_100008150)
    {
      v8 = [(CSDiagnosticeExtension *)self _sortedAttachmentListWithPath:@"/private/var/mobile/Library/Logs/CrashReporter/VoiceTrigger/audio" regularExpressionPatten:@".*\\.(wav)$"];
      [v5 addObjectsFromArray:v8];

      v9 = [(CSDiagnosticeExtension *)self _sortedAttachmentListWithPath:@"/private/var/mobile/Library/Logs/CrashReporter/Assistant/SpeechLogs" regularExpressionPatten:@".*\\.(wav)$"];
      [v5 addObjectsFromArray:v9];

      v10 = [(CSDiagnosticeExtension *)self _sortedAttachmentListWithPath:@"/private/var/mobile/Library/Logs/CrashReporter/Assistant/SpeechLogs" regularExpressionPatten:@".*\\.(opx)$"];
      [v5 addObjectsFromArray:v10];

      v11 = @"/private/var/mobile/Library/Logs/CrashReporter/Assistant/MHLog";
      selfCopy2 = self;
      v13 = @".*\\.(wav)$";
    }

    else
    {
      v11 = @"/private/var/mobile/Library/Logs/CrashReporter/Assistant/SpeechLogs";
      v13 = @"PHS\\-.*\\.(wav)$";
      selfCopy2 = self;
    }

    v14 = [(CSDiagnosticeExtension *)selfCopy2 _sortedAttachmentListWithPath:v11 regularExpressionPatten:v13];
    [v5 addObjectsFromArray:v14];
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v16 = 136315394;
    v17 = "[CSDiagnosticeExtension attachmentsForParameters:]";
    v18 = 2112;
    v19 = @"Not collecting 'CoreSpeech Logs'";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s %@", &v16, 0x16u);
  }

  return v5;
}

@end