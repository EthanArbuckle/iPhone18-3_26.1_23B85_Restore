uint64_t sub_1000011B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1000011D0(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4 = a2;
  v5 = [v3 contentViewController];
  v6 = [v5 view];
  [v6 removeFromSuperview];

  [*(*(*(a1 + 40) + 8) + 40) setContentViewController:v4];
  v8.receiver = *(a1 + 32);
  v8.super_class = GKChallengeIssueExtensionViewController;
  return objc_msgSendSuper2(&v8, "constructContentViewController");
}

void sub_100001274(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10 = GKExtensionMessageCommandKey;
  v11 = &off_100004310;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v8 = [NSMutableDictionary dictionaryWithDictionary:v7];

  if (v5)
  {
    v9 = [v5 _gkMapWithBlock:&stru_100004210];
    [v8 setObject:v9 forKeyedSubscript:GKExtensionMessagePlayerList];
  }

  if (v6)
  {
    [v8 setObject:v6 forKeyedSubscript:GKExtensionMessageChallengeMessage];
  }

  [*(*(*(a1 + 32) + 8) + 40) sendMessageToClient:v8];
}

void sub_1000014C0(id a1, NSError *a2)
{
  v2 = a2;
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKHosted;
  if (os_log_type_enabled(os_log_GKHosted, OS_LOG_TYPE_DEBUG))
  {
    sub_1000016D8(v4, v2);
  }
}

void sub_100001664(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GKChallengeIssueExtensionViewController.m" lineNumber:112 description:@"GKChallengeIssueExtensionContext remote object proxy is nil!"];
}

void sub_1000016D8(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 localizedDescription];
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "error calling host - %@", &v5, 0xCu);
}