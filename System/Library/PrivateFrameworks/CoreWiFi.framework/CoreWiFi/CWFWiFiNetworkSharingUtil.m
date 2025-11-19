@interface CWFWiFiNetworkSharingUtil
+ (id)prepareSharedNetworksJSONDataWithNetworks:(id)a3 matching:(id)a4;
+ (id)prepareSharedNetworksObjcWithNetworks:(id)a3 matching:(id)a4;
- (CWFWiFiNetworkSharingUtil)init;
@end

@implementation CWFWiFiNetworkSharingUtil

+ (id)prepareSharedNetworksJSONDataWithNetworks:(id)a3 matching:(id)a4
{
  sub_1E0BEAD90(0, &qword_1ECE80A78, off_1E86E4EB8);
  v5 = sub_1E0D6D05C();
  if (a4)
  {
    v6 = a4;
    a4 = sub_1E0D6CEEC();
    v8 = v7;
  }

  else
  {
    v8 = 0xF000000000000000;
  }

  v9 = sub_1E0BEAFB0(v5, a4, v8);
  v11 = v10;
  sub_1E0BE98D4(a4, v8);

  if (v11 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v13 = sub_1E0D6CEDC();
    sub_1E0BE98D4(v9, v11);
    v12 = v13;
  }

  return v12;
}

+ (id)prepareSharedNetworksObjcWithNetworks:(id)a3 matching:(id)a4
{
  sub_1E0BEAD90(0, &qword_1ECE80A78, off_1E86E4EB8);
  v5 = sub_1E0D6D05C();
  if (a4)
  {
    v6 = a4;
    a4 = sub_1E0D6CEEC();
    v8 = v7;
  }

  else
  {
    v8 = 0xF000000000000000;
  }

  v9 = sub_1E0BEB55C(v5, a4, v8);
  sub_1E0BE98D4(a4, v8);

  if (v9)
  {
    v10 = sub_1E0D6D04C();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CWFWiFiNetworkSharingUtil)init
{
  v3.receiver = self;
  v3.super_class = CWFWiFiNetworkSharingUtil;
  return [(CWFWiFiNetworkSharingUtil *)&v3 init];
}

@end