@interface IOThreadXPCWorkgroupTransporter
+ (id)transporter:(const void *)a3;
- (BOOL)isEqual:(id)a3;
- (IOThreadWorkgroup)getWorkgroup;
- (IOThreadXPCWorkgroupTransporter)initWithCoder:(id)a3;
- (IOThreadXPCWorkgroupTransporter)initWithWorkgroup:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IOThreadXPCWorkgroupTransporter

- (IOThreadWorkgroup)getWorkgroup
{
  v3 = v2;
  v5 = [(IOThreadXPCWorkgroupTransporter *)self workgroup];
  v4 = xpc_mach_send_copy_right();

  v6 = os_workgroup_create_with_port("IsolatedCoreAudioClientWorkgroup", v4);
  IOThreadWorkgroup::IOThreadWorkgroup(v3, v6);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(IOThreadXPCWorkgroupTransporter *)self workgroup];

    if (v6)
    {
      v7 = [(IOThreadXPCWorkgroupTransporter *)self workgroup];
      v8 = [v5 workgroup];
      LOBYTE(v9) = xpc_equal(v7, v8);
    }

    else
    {
      v7 = [v5 workgroup];
      v9 = v7 == 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"This object may only be decoded by an NSXPCCoder."];
  }

  v7 = v4;
  v5 = [(IOThreadXPCWorkgroupTransporter *)self workgroup];

  if (v5)
  {
    v6 = [(IOThreadXPCWorkgroupTransporter *)self workgroup];
  }

  else
  {
    v6 = xpc_null_create();
  }

  [v7 encodeXPCObject:v6 forKey:@"IOThreadXPCWorkgroupTransporter"];
}

- (void)dealloc
{
  workgroup = self->_workgroup;
  self->_workgroup = 0;

  v4.receiver = self;
  v4.super_class = IOThreadXPCWorkgroupTransporter;
  [(IOThreadXPCWorkgroupTransporter *)&v4 dealloc];
}

- (IOThreadXPCWorkgroupTransporter)initWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"This object may only be decoded by an NSXPCCoder."];
  }

  v12.receiver = self;
  v12.super_class = IOThreadXPCWorkgroupTransporter;
  v5 = [(IOThreadXPCWorkgroupTransporter *)&v12 init];
  if (v5)
  {
    v6 = v4;
    v7 = [v6 decodeXPCObjectForKey:@"IOThreadXPCWorkgroupTransporter"];
    workgroup = v5->_workgroup;
    v5->_workgroup = v7;

    if (!v5->_workgroup)
    {

      v10 = 0;
      goto LABEL_10;
    }

    if (MEMORY[0x259C39860]() == MEMORY[0x277D864B0])
    {
      v9 = v5->_workgroup;
      v5->_workgroup = 0;
    }
  }

  v10 = v5;
LABEL_10:

  return v10;
}

- (IOThreadXPCWorkgroupTransporter)initWithWorkgroup:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IOThreadXPCWorkgroupTransporter;
  v6 = [(IOThreadXPCWorkgroupTransporter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workgroup, a3);
  }

  return v7;
}

+ (id)transporter:(const void *)a3
{
  mach_port_out = 0;
  v3 = *(*a3 + 8);
  caulk::mach::os_object<OS_os_workgroup * {__strong}>::get(v3);
  objc_claimAutoreleasedReturnValue();
  if (v3)
  {
    v4 = os_workgroup_copy_port(v3, &mach_port_out);
    if (v4)
    {
      NSLog(&cfstr_FailedToGetThe.isa, v4);
      mach_port_out = 0;
    }
  }

  v5 = xpc_mach_send_create();
  v6 = [[IOThreadXPCWorkgroupTransporter alloc] initWithWorkgroup:v5];

  return v6;
}

@end