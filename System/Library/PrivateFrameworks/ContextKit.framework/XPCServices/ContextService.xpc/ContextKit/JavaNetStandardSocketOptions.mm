@interface JavaNetStandardSocketOptions
+ (void)initialize;
@end

@implementation JavaNetStandardSocketOptions

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [JavaNetStandardSocketOptions_NetworkInterfaceSocketOption alloc];
    v3 = JavaNetNetworkInterface_class_();
    JreStrongAssign(&v2->super.name_, @"IP_MULTICAST_IF");
    JreStrongAssign(&v2->super.type_, v3);
    v2->super.socketOption_ = 31;
    JreStrongAssignAndConsume(&JavaNetStandardSocketOptions_IP_MULTICAST_IF_, v2);
    v4 = sub_100223238(@"IP_MULTICAST_LOOP", 18);
    JreStrongAssignAndConsume(&JavaNetStandardSocketOptions_IP_MULTICAST_LOOP__, v4);
    v5 = sub_10022329C(@"IP_MULTICAST_TTL", 17);
    JreStrongAssignAndConsume(&JavaNetStandardSocketOptions_IP_MULTICAST_TTL_, v5);
    v6 = sub_10022329C(@"IP_TOS", 3);
    JreStrongAssignAndConsume(&JavaNetStandardSocketOptions_IP_TOS_, v6);
    v7 = sub_100223238(@"SO_BROADCAST", 32);
    JreStrongAssignAndConsume(&JavaNetStandardSocketOptions_SO_BROADCAST__, v7);
    v8 = sub_100223238(@"SO_KEEPALIVE", 8);
    JreStrongAssignAndConsume(&JavaNetStandardSocketOptions_SO_KEEPALIVE__, v8);
    v9 = JavaLangInteger_class_();
    v10 = [JavaNetStandardSocketOptions__1 alloc];
    JreStrongAssign(&v10->super.name_, @"SO_LINGER");
    JreStrongAssign(&v10->super.type_, v9);
    v10->super.socketOption_ = 128;
    JreStrongAssignAndConsume(&JavaNetStandardSocketOptions_SO_LINGER__, v10);
    v11 = sub_100223300(@"SO_RCVBUF", 4098);
    JreStrongAssignAndConsume(&JavaNetStandardSocketOptions_SO_RCVBUF__, v11);
    v12 = sub_100223238(@"SO_REUSEADDR", 4);
    JreStrongAssignAndConsume(&JavaNetStandardSocketOptions_SO_REUSEADDR__, v12);
    v13 = sub_100223300(@"SO_SNDBUF", 4097);
    JreStrongAssignAndConsume(&JavaNetStandardSocketOptions_SO_SNDBUF__, v13);
    v14 = sub_100223238(@"TCP_NODELAY", 1);
    JreStrongAssignAndConsume(&JavaNetStandardSocketOptions_TCP_NODELAY__, v14);
    v15 = new_JavaUtilHashSet_initWithInt_(8);
    [(JavaUtilHashSet *)v15 addWithId:JavaNetStandardSocketOptions_IP_MULTICAST_IF_];
    [(JavaUtilHashSet *)v15 addWithId:JavaNetStandardSocketOptions_IP_MULTICAST_LOOP__];
    [(JavaUtilHashSet *)v15 addWithId:JavaNetStandardSocketOptions_IP_MULTICAST_TTL_];
    [(JavaUtilHashSet *)v15 addWithId:JavaNetStandardSocketOptions_IP_TOS_];
    [(JavaUtilHashSet *)v15 addWithId:JavaNetStandardSocketOptions_SO_BROADCAST__];
    [(JavaUtilHashSet *)v15 addWithId:JavaNetStandardSocketOptions_SO_REUSEADDR__];
    [(JavaUtilHashSet *)v15 addWithId:JavaNetStandardSocketOptions_SO_RCVBUF__];
    [(JavaUtilHashSet *)v15 addWithId:JavaNetStandardSocketOptions_SO_SNDBUF__];
    v16 = JavaUtilCollections_unmodifiableSetWithJavaUtilSet_(v15);
    JreStrongAssign(&JavaNetStandardSocketOptions_DATAGRAM_SOCKET_OPTIONS_, v16);
    v17 = new_JavaUtilHashSet_initWithInt_(7);
    [(JavaUtilHashSet *)v17 addWithId:JavaNetStandardSocketOptions_IP_TOS_];
    [(JavaUtilHashSet *)v17 addWithId:JavaNetStandardSocketOptions_SO_KEEPALIVE__];
    [(JavaUtilHashSet *)v17 addWithId:JavaNetStandardSocketOptions_SO_LINGER__];
    [(JavaUtilHashSet *)v17 addWithId:JavaNetStandardSocketOptions_TCP_NODELAY__];
    [(JavaUtilHashSet *)v17 addWithId:JavaNetStandardSocketOptions_SO_RCVBUF__];
    [(JavaUtilHashSet *)v17 addWithId:JavaNetStandardSocketOptions_SO_REUSEADDR__];
    [(JavaUtilHashSet *)v17 addWithId:JavaNetStandardSocketOptions_SO_SNDBUF__];
    v18 = JavaUtilCollections_unmodifiableSetWithJavaUtilSet_(v17);
    JreStrongAssign(&JavaNetStandardSocketOptions_SOCKET_OPTIONS_, v18);
    v19 = new_JavaUtilHashSet_initWithInt_(2);
    [(JavaUtilHashSet *)v19 addWithId:JavaNetStandardSocketOptions_SO_RCVBUF__];
    [(JavaUtilHashSet *)v19 addWithId:JavaNetStandardSocketOptions_SO_REUSEADDR__];
    v20 = JavaUtilCollections_unmodifiableSetWithJavaUtilSet_(v19);
    JreStrongAssign(&JavaNetStandardSocketOptions_SERVER_SOCKET_OPTIONS_, v20);
    atomic_store(1u, JavaNetStandardSocketOptions__initialized);
  }
}

@end