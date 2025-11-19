@interface IssuerDirectoryDownloadTaskManager.URLSessionNoCustomCertVerificationDelegate
- (_TtCC19HealthRecordsDaemon34IssuerDirectoryDownloadTaskManagerP33_7AB94515F5C396F1FDF73A0A6286A3E442URLSessionNoCustomCertVerificationDelegate)init;
- (void)URLSession:(NSURLSession *)a3 didReceiveChallenge:(NSURLAuthenticationChallenge *)a4 completionHandler:(id)a5;
@end

@implementation IssuerDirectoryDownloadTaskManager.URLSessionNoCustomCertVerificationDelegate

- (void)URLSession:(NSURLSession *)a3 didReceiveChallenge:(NSURLAuthenticationChallenge *)a4 completionHandler:(id)a5
{
  sub_251AF4E18();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_251C71214();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_251C775E0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_251C775E8;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_251B34078(0, 0, v12, &unk_251C775F0, v17);
}

- (_TtCC19HealthRecordsDaemon34IssuerDirectoryDownloadTaskManagerP33_7AB94515F5C396F1FDF73A0A6286A3E442URLSessionNoCustomCertVerificationDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for IssuerDirectoryDownloadTaskManager.URLSessionNoCustomCertVerificationDelegate();
  return [(IssuerDirectoryDownloadTaskManager.URLSessionNoCustomCertVerificationDelegate *)&v3 init];
}

@end