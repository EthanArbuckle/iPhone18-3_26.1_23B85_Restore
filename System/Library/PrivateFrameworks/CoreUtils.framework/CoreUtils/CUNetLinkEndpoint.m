@interface CUNetLinkEndpoint
- ($4FF8D77539A8BD95DCE0A545902499A9)ipAddr;
- (id)descriptionWithLevel:(int)a3;
- (void)setIpAddr:(id *)a3;
@end

@implementation CUNetLinkEndpoint

- (void)setIpAddr:(id *)a3
{
  var0 = a3->var0;
  *(&self->_ipAddr.v6.sin6_addr + 4) = *(&a3->var2.sin6_addr + 4);
  self->_ipAddr.sa = var0;
}

- ($4FF8D77539A8BD95DCE0A545902499A9)ipAddr
{
  retstr->var0 = self->var2.sin6_addr;
  *(&retstr->var2.sin6_addr + 4) = *(&self->var2.sin6_addr + 12);
  return self;
}

- (id)descriptionWithLevel:(int)a3
{
  v75 = 0;
  NSAppendPrintF(&v75, "CUNetLinkEndpoint %##a", *&a3, v3, v4, v5, v6, v7, &self->_ipAddr);
  v16 = v75;
  v74 = v16;
  state = self->_state;
  if (state > 3)
  {
    v18 = "?";
  }

  else
  {
    v18 = off_1E73A3F50[state];
  }

  NSAppendPrintF(&v74, ", St %s", v10, v11, v12, v13, v14, v15, v18);
  v19 = v74;

  v73 = v19;
  NSAppendPrintF(&v73, ", StCh %u", v20, v21, v22, v23, v24, v25, self->_stateChanges);
  v26 = v73;

  if (self->_expiredTicks)
  {
    v72 = v26;
    v33 = mach_absolute_time();
    v65 = UpTicksToSeconds(v33 - self->_expiredTicks);
    v34 = &v72;
    NSAppendPrintF(&v72, ", Expired %llu secs ago", v35, v36, v37, v38, v39, v40, v65);
  }

  else
  {
    v71 = v26;
    v34 = &v71;
    NSAppendPrintF(&v71, ", Expired No", v27, v28, v29, v30, v31, v32, v64);
  }

  v41 = *v34;

  v70.tv_sec = 0;
  *&v70.tv_usec = 0;
  gettimeofday(&v70, 0);
  v69 = v41;
  NSAppendPrintF(&v69, ", Expire %lld", v42, v43, v44, v45, v46, v47, self->_expireTime - v70.tv_sec);
  v48 = v69;

  v68 = v48;
  NSAppendPrintF(&v68, ", Probes %u", v49, v50, v51, v52, v53, v54, self->_seqNum);
  v55 = v68;

  if (a3 <= 20)
  {
    v67 = v55;
    NSAppendPrintF(&v67, "\n", v56, v57, v58, v59, v60, v61, v66);
    v62 = v67;

    v55 = v62;
  }

  return v55;
}

@end