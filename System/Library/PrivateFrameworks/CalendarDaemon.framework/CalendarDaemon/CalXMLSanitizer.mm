@interface CalXMLSanitizer
- (CalXMLSanitizer)init;
- (id)currentRedactionRule;
- (id)getIndentation;
- (void)_appendNamespaceURI:(id)i forElementName:(id)name qualifiedName:(id)qualifiedName;
- (void)flushContents;
- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
- (void)parser:(id)parser foundCDATA:(id)a;
- (void)parser:(id)parser foundCharacters:(id)characters;
- (void)parser:(id)parser foundComment:(id)comment;
- (void)parser:(id)parser parseErrorOccurred:(id)occurred;
@end

@implementation CalXMLSanitizer

- (CalXMLSanitizer)init
{
  v14.receiver = self;
  v14.super_class = CalXMLSanitizer;
  v2 = [(CalXMLSanitizer *)&v14 init];
  if (v2)
  {
    v3 = objc_opt_new();
    xml = v2->_xml;
    v2->_xml = v3;

    v5 = objc_opt_new();
    cachedIndents = v2->_cachedIndents;
    v2->_cachedIndents = v5;

    [(NSMutableArray *)v2->_cachedIndents addObject:&stru_2837B4630];
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    namespaceURIToLevelOfFirstElementInNamespace = v2->namespaceURIToLevelOfFirstElementInNamespace;
    v2->namespaceURIToLevelOfFirstElementInNamespace = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    elementNames = v2->elementNames;
    v2->elementNames = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    elementNamespaces = v2->elementNamespaces;
    v2->elementNamespaces = v11;
  }

  return v2;
}

- (id)getIndentation
{
  v3 = [(NSMutableArray *)self->_cachedIndents count];
  nestingLevel = self->_nestingLevel;
  if (v3 <= nestingLevel)
  {
    lastObject = [(NSMutableArray *)self->_cachedIndents lastObject];
    v6 = [(NSMutableArray *)self->_cachedIndents count];
    if (v6 <= self->_nestingLevel)
    {
      v8 = v6;
      do
      {
        v7 = [lastObject stringByAppendingString:@"  "];

        [(NSMutableArray *)self->_cachedIndents addObject:v7];
        ++v8;
        lastObject = v7;
      }

      while (v8 <= self->_nestingLevel);
    }

    else
    {
      v7 = lastObject;
    }

    nestingLevel = self->_nestingLevel;
  }

  cachedIndents = self->_cachedIndents;

  return [(NSMutableArray *)cachedIndents objectAtIndexedSubscript:nestingLevel];
}

- (id)currentRedactionRule
{
  lastObject = [(NSMutableArray *)self->elementNames lastObject];
  if (lastObject)
  {
    lastObject2 = [(NSMutableArray *)self->elementNamespaces lastObject];
    if (currentRedactionRule_onceToken != -1)
    {
      [CalXMLSanitizer currentRedactionRule];
    }

    v5 = [currentRedactionRule_redactionRules objectForKeyedSubscript:lastObject2];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 objectForKeyedSubscript:lastObject];
      v8 = v7;
      if (v7)
      {
        v8 = v7;
        v9 = v8;
      }

      else
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@>%@", lastObject2, lastObject];
        v12 = currentRedactionRule_logDedupingQueue;
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __39__CalXMLSanitizer_currentRedactionRule__block_invoke_120;
        v15[3] = &unk_27851AFA8;
        v16 = v11;
        v17 = lastObject2;
        v18 = lastObject;
        v13 = v11;
        dispatch_sync(v12, v15);
        v9 = kUnknownElementRedactionRule;
      }
    }

    else
    {
      v10 = currentRedactionRule_logDedupingQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __39__CalXMLSanitizer_currentRedactionRule__block_invoke_2;
      block[3] = &unk_27851AB28;
      v20 = lastObject2;
      v21 = lastObject;
      dispatch_sync(v10, block);
      v9 = kUnknownElementRedactionRule;

      v8 = v20;
    }
  }

  else
  {
    v9 = kUnknownElementRedactionRule;
  }

  return v9;
}

void __39__CalXMLSanitizer_currentRedactionRule__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v224[0] = MEMORY[0x277D85DD0];
  v224[1] = 3221225472;
  v224[2] = ___createRedactionRules_block_invoke;
  v224[3] = &unk_27851B020;
  v223 = v0;
  v225 = v223;
  v1 = MEMORY[0x22AA4DCD0](v224);
  v2 = (v1)[2](v1, @"DAV:", @"propfind", 0);
  v3 = (v1)[2](v1, @"DAV:", @"prop", 0);
  v4 = (v1)[2](v1, @"DAV:", @"current-user-principal", 0);
  v5 = (v1)[2](v1, @"DAV:", @"displayname", 2);
  v6 = (v1)[2](v1, @"DAV:", @"principal-collection-set", 0);
  v7 = (v1)[2](v1, @"DAV:", @"principal-URL", 0);
  v8 = (v1)[2](v1, @"DAV:", @"resource-id", 0);
  v9 = (v1)[2](v1, @"DAV:", @"supported-report-set", 0);
  v10 = (v1)[2](v1, @"DAV:", @"supported-report", 0);
  v11 = (v1)[2](v1, @"DAV:", @"report", 0);
  v12 = (v1)[2](v1, @"DAV:", @"acl-principal-prop-set", 0);
  v13 = (v1)[2](v1, @"DAV:", @"principal-match", 0);
  v14 = (v1)[2](v1, @"DAV:", @"principal-property-search", 0);
  v15 = (v1)[2](v1, @"DAV:", @"expand-property", 0);
  v16 = (v1)[2](v1, @"DAV:", @"sync-collection", 0);
  v17 = (v1)[2](v1, @"DAV:", @"multistatus", 0);
  v18 = (v1)[2](v1, @"DAV:", @"response", 0);
  v19 = (v1)[2](v1, @"DAV:", @"responsedescription", 5);
  v20 = (v1)[2](v1, @"DAV:", @"propstat", 0);
  v21 = (v1)[2](v1, @"DAV:", @"status", 5);
  v22 = (v1)[2](v1, @"DAV:", @"sync-token", 5);
  v23 = (v1)[2](v1, @"DAV:", @"sync-level", 5);
  v24 = (v1)[2](v1, @"DAV:", @"owner", 0);
  v25 = (v1)[2](v1, @"DAV:", @"add-member", 0);
  v26 = (v1)[2](v1, @"DAV:", @"quota-used-bytes", 5);
  v27 = (v1)[2](v1, @"DAV:", @"quota-available-bytes", 5);
  v28 = (v1)[2](v1, @"DAV:", @"current-user-privilege-set", 0);
  v29 = (v1)[2](v1, @"DAV:", @"all", 0);
  v30 = (v1)[2](v1, @"DAV:", @"bind", 0);
  v31 = (v1)[2](v1, @"DAV:", @"collection", 0);
  v32 = (v1)[2](v1, @"DAV:", @"error", 0);
  v33 = (v1)[2](v1, @"DAV:", @"getcontenttype", 5);
  v34 = (v1)[2](v1, @"DAV:", @"getetag", 5);
  v35 = (v1)[2](v1, @"DAV:", @"group-member-set", 0);
  v36 = (v1)[2](v1, @"DAV:", @"number-of-matches-within-limits", 0);
  v37 = (v1)[2](v1, @"DAV:", @"principal-search-property-set", 0);
  v38 = (v1)[2](v1, @"DAV:", @"principal-search-property", 0);
  v39 = (v1)[2](v1, @"DAV:", @"privilege", 0);
  v40 = (v1)[2](v1, @"DAV:", @"propertyupdate", 0);
  v41 = (v1)[2](v1, @"DAV:", @"read-acl", 0);
  v42 = (v1)[2](v1, @"DAV:", @"read-current-user-privilege-set", 0);
  v43 = (v1)[2](v1, @"DAV:", @"read", 0);
  v44 = (v1)[2](v1, @"DAV:", @"resourcetype", 0);
  v45 = (v1)[2](v1, @"DAV:", @"set", 0);
  v46 = (v1)[2](v1, @"DAV:", @"unbind", 0);
  v47 = (v1)[2](v1, @"DAV:", @"unlock", 0);
  v48 = (v1)[2](v1, @"DAV:", @"write-acl", 0);
  v49 = (v1)[2](v1, @"DAV:", @"write-content", 0);
  v50 = (v1)[2](v1, @"DAV:", @"write-properties", 0);
  v51 = (v1)[2](v1, @"DAV:", @"write", 0);
  v52 = (v1)[2](v1, @"urn:ietf:params:xml:ns:caldav", @"calendar-home-set", 0);
  v53 = (v1)[2](v1, @"urn:ietf:params:xml:ns:caldav", @"calendar-user-address-set", 0);
  v54 = (v1)[2](v1, @"urn:ietf:params:xml:ns:caldav", @"schedule-inbox-URL", 0);
  v55 = (v1)[2](v1, @"urn:ietf:params:xml:ns:caldav", @"schedule-outbox-URL", 0);
  v56 = (v1)[2](v1, @"urn:ietf:params:xml:ns:caldav", @"calendar-alarm", 0);
  v57 = (v1)[2](v1, @"urn:ietf:params:xml:ns:caldav", @"supported-calendar-component-set", 0);
  v58 = (v1)[2](v1, @"urn:ietf:params:xml:ns:caldav", @"default-alarm-vevent-date", 4);
  v59 = (v1)[2](v1, @"urn:ietf:params:xml:ns:caldav", @"default-alarm-vevent-datetime", 4);
  v60 = (v1)[2](v1, @"urn:ietf:params:xml:ns:caldav", @"calendar-description", 0);
  v61 = (v1)[2](v1, @"urn:ietf:params:xml:ns:caldav", @"calendar-timezone", 3);
  v62 = (v1)[2](v1, @"urn:ietf:params:xml:ns:caldav", @"supported-calendar-component-sets", 0);
  v63 = (v1)[2](v1, @"urn:ietf:params:xml:ns:caldav", @"schedule-calendar-transp", 0);
  v64 = (v1)[2](v1, @"urn:ietf:params:xml:ns:caldav", @"calendar-data", 3);
  v65 = (v1)[2](v1, @"urn:ietf:params:xml:ns:caldav", @"calendar-free-busy-set", 0);
  v66 = (v1)[2](v1, @"urn:ietf:params:xml:ns:caldav", @"calendar-multiget", 0);
  v67 = (v1)[2](v1, @"urn:ietf:params:xml:ns:caldav", @"calendar-query", 0);
  v68 = (v1)[2](v1, @"urn:ietf:params:xml:ns:caldav", @"calendar-user-type", 0);
  v69 = (v1)[2](v1, @"urn:ietf:params:xml:ns:caldav", @"calendar", 0);
  v70 = (v1)[2](v1, @"urn:ietf:params:xml:ns:caldav", @"default-alarm-vevent-date", 4);
  v71 = (v1)[2](v1, @"urn:ietf:params:xml:ns:caldav", @"filter", 0);
  v72 = (v1)[2](v1, @"urn:ietf:params:xml:ns:caldav", @"free-busy-query", 0);
  v73 = (v1)[2](v1, @"urn:ietf:params:xml:ns:caldav", @"opaque", 0);
  v74 = (v1)[2](v1, @"urn:ietf:params:xml:ns:caldav", @"read-free-busy", 0);
  v75 = (v1)[2](v1, @"urn:ietf:params:xml:ns:caldav", @"recipient", 0);
  v76 = (v1)[2](v1, @"urn:ietf:params:xml:ns:caldav", @"response", 0);
  v77 = (v1)[2](v1, @"urn:ietf:params:xml:ns:caldav", @"request-status", 5);
  v78 = (v1)[2](v1, @"urn:ietf:params:xml:ns:caldav", @"schedule-default-calendar-URL", 0);
  v79 = (v1)[2](v1, @"urn:ietf:params:xml:ns:caldav", @"schedule-deliver", 0);
  v80 = (v1)[2](v1, @"urn:ietf:params:xml:ns:caldav", @"schedule-inbox", 0);
  v81 = (v1)[2](v1, @"urn:ietf:params:xml:ns:caldav", @"schedule-outbox", 0);
  v82 = (v1)[2](v1, @"urn:ietf:params:xml:ns:caldav", @"schedule-response", 0);
  v83 = (v1)[2](v1, @"urn:ietf:params:xml:ns:caldav", @"schedule-send", 0);
  v84 = (v1)[2](v1, @"urn:ietf:params:xml:ns:caldav", @"schedule-tag", 5);
  v85 = (v1)[2](v1, @"urn:ietf:params:xml:ns:caldav", @"schedule", 0);
  v86 = (v1)[2](v1, @"urn:ietf:params:xml:ns:caldav", @"transparent", 0);
  v87 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"dropbox-home-URL", 0);
  v88 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"email-address-set", 0);
  v89 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"email-address", 2);
  v90 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"notification-URL", 0);
  v91 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"push-transports", 0);
  v92 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"token-url", 0);
  v93 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"subscription-url", 0);
  v94 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"courierserver", 1);
  v95 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"refresh-interval", 5);
  v96 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"pushkey", 5);
  v97 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"pre-publish-url", 0);
  v98 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"invite", 0);
  v99 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"subscribed-strip-alarms", 0);
  v100 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"allowed-sharing-modes", 0);
  v101 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"access", 0);
  v102 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"action", 0);
  v103 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"apsbundleid", 5);
  v104 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"attendee", 1);
  v105 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"calendar-proxy-read-for", 0);
  v106 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"calendar-proxy-write-for", 0);
  v107 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"calendar-search", 0);
  v108 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"can-be-published", 0);
  v109 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"can-be-shared", 0);
  v110 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"cancel", 0);
  v111 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"changed-by", 0);
  v112 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"changes", 0);
  v113 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"common-name", 2);
  v114 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"create", 0);
  v115 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"created-by", 0);
  v116 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"created", 0);
  v117 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"dropbox-home", 0);
  v118 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"dtstamp", 5);
  v119 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"env", 5);
  v120 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"first-name", 2);
  v121 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"firstName", 2);
  v122 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"free-busy-url", 0);
  v123 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"getctag", 5);
  v124 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"hosturl", 0);
  v125 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"in-reply-to", 5);
  v126 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"invite-accepted", 0);
  v127 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"invite-declined", 0);
  v128 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"invite-deleted", 0);
  v129 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"invite-noresponse", 0);
  v130 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"invite-reply", 0);
  v131 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"last-name", 2);
  v132 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"lastName", 2);
  v133 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"master", 0);
  v134 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"name", 2);
  v135 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"never-publish", 0);
  v136 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"never-shared", 0);
  v137 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"notification", 0);
  v138 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"notificationtype", 0);
  v139 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"organizer-cn", 2);
  v140 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"organizer-first", 0);
  v141 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"organizer-last", 0);
  v142 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"organizer", 0);
  v143 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"publish-url", 0);
  v144 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"read-write", 0);
  v145 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"read", 0);
  v146 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"record-type", 5);
  v147 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"recurrence", 0);
  v148 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"recurrenceid", 5);
  v149 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"remove", 0);
  v150 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"reply", 0);
  v151 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"resource-changed", 0);
  v152 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"schedule-changes", 0);
  v153 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"search-token", 0);
  v154 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"set", 0);
  v155 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"shared-owner", 0);
  v156 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"shared", 0);
  v157 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"share", 0);
  v158 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"source", 0);
  v159 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"subscribed-strip-attachments", 0);
  v160 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"subscribed-strip-todos", 0);
  v161 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"subscribed", 0);
  v162 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"summary", 2);
  v163 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"time", 5);
  v164 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"uid", 5);
  v165 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"update", 0);
  v166 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"updated-by", 0);
  v167 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"user", 0);
  v168 = (v1)[2](v1, @"http://cal.me.com/_namespace/", @"apsbundleid", 5);
  v169 = (v1)[2](v1, @"http://me.com/_namespace/", @"verify-calendar-user", 0);
  v170 = (v1)[2](v1, @"http://me.com/_namespace/", @"apsbundleid", 5);
  v171 = (v1)[2](v1, @"http://me.com/_namespace/", @"bulk-requests", 0);
  v172 = (v1)[2](v1, @"http://me.com/_namespace/", @"crud", 0);
  v173 = (v1)[2](v1, @"http://me.com/_namespace/", @"delete", 0);
  v174 = (v1)[2](v1, @"http://me.com/_namespace/", @"insert", 0);
  v175 = (v1)[2](v1, @"http://me.com/_namespace/", @"max-bytes", 5);
  v176 = (v1)[2](v1, @"http://me.com/_namespace/", @"max-resources", 5);
  v177 = (v1)[2](v1, @"http://me.com/_namespace/", @"max-size", 5);
  v178 = (v1)[2](v1, @"http://me.com/_namespace/", @"simple", 0);
  v179 = (v1)[2](v1, @"http://me.com/_namespace/", @"supported", 0);
  v180 = (v1)[2](v1, @"http://me.com/_namespace/", @"update", 0);
  v181 = (v1)[2](v1, @"urn:mobileme:davservices", @"env", 5);
  v182 = (v1)[2](v1, @"http://apple.com/ns/ical/", @"location-code", 0);
  v183 = (v1)[2](v1, @"http://apple.com/ns/ical/", @"calendar-order", 5);
  v184 = (v1)[2](v1, @"http://apple.com/ns/ical/", @"refreshrate", 5);
  v185 = (v1)[2](v1, @"http://apple.com/ns/ical/", @"autoprovisioned", 0);
  v186 = (v1)[2](v1, @"http://apple.com/ns/ical/", @"language-code", 0);
  v222 = (v1)[2](v1, @"DAV:", @"href", 1);
  v187 = ___createRedactionRules_block_invoke_2(v222, v222, @"preferred", 5);
  v221 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"transport", 0);
  v188 = ___createRedactionRules_block_invoke_2(v221, v221, @"type", 5);
  v220 = (v1)[2](v1, @"urn:ietf:params:xml:ns:caldav", @"comp", 0);
  v189 = ___createRedactionRules_block_invoke_2(v220, v220, @"name", 5);
  v219 = (v1)[2](v1, @"urn:ietf:params:xml:ns:caldav", @"comp-filter", 0);
  v190 = ___createRedactionRules_block_invoke_2(v219, v219, @"name", 5);
  v191 = (v1)[2](v1, @"DAV:", @"property", 0);
  v192 = ___createRedactionRules_block_invoke_2(v191, v191, @"name", 5);
  v193 = ___createRedactionRules_block_invoke_2(v192, v191, @"namespace", 5);
  v218 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"invite-notification", 0);
  v194 = ___createRedactionRules_block_invoke_2(v218, v218, @"shared-type", 5);
  v195 = (v1)[2](v1, @"urn:ietf:params:xml:ns:caldav", @"time-range", 0);
  v196 = ___createRedactionRules_block_invoke_2(v195, v195, @"start", 5);
  v197 = ___createRedactionRules_block_invoke_2(v196, v195, @"end", 5);
  v198 = (v1)[2](v1, @"http://apple.com/ns/ical/", @"calendar-color", 5);
  v199 = ___createRedactionRules_block_invoke_2(v198, v198, @"symbolic-color", 5);
  v200 = (v1)[2](v1, @"DAV:", @"description", 5);
  v201 = ___createRedactionRules_block_invoke_2(v200, v200, @"xml:lang", 5);
  v202 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"changed-property", 0);
  v203 = ___createRedactionRules_block_invoke_2(v202, v202, @"name", 5);
  v204 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"changed-parameter", 0);
  v205 = ___createRedactionRules_block_invoke_2(v204, v204, @"name", 5);
  v206 = (v1)[2](v1, @"http://calendarserver.org/ns/", @"calendarserver-principal-search", 0);
  v207 = ___createRedactionRules_block_invoke_2(v206, v206, @"context", 5);
  v208 = objc_alloc_init(CalXMLElementRedactionRule);
  v209 = kUnknownElementRedactionRule;
  kUnknownElementRedactionRule = v208;

  [kUnknownElementRedactionRule setElementName:5];
  [kUnknownElementRedactionRule setContent:0];
  [kUnknownElementRedactionRule setCdata:3];
  [0 setAttributeName:5];
  [0 setAttributeValue:0];
  v210 = v223;

  v211 = currentRedactionRule_redactionRules;
  currentRedactionRule_redactionRules = v210;

  v212 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v213 = currentRedactionRule_loggedNamespaces;
  currentRedactionRule_loggedNamespaces = v212;

  v214 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v215 = currentRedactionRule_loggedElementNames;
  currentRedactionRule_loggedElementNames = v214;

  v216 = dispatch_queue_create("com.apple.mobilecal.CalDAVTrafficLogScrubber.elementDedupingQueue", 0);
  v217 = currentRedactionRule_logDedupingQueue;
  currentRedactionRule_logDedupingQueue = v216;
}

void __39__CalXMLSanitizer_currentRedactionRule__block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  if (([currentRedactionRule_loggedNamespaces containsObject:*(a1 + 32)] & 1) == 0)
  {
    [currentRedactionRule_loggedNamespaces addObject:*v2];
    v3 = +[CalDAVTrafficLogScrubber log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __39__CalXMLSanitizer_currentRedactionRule__block_invoke_2_cold_1((a1 + 32), a1);
    }
  }
}

void __39__CalXMLSanitizer_currentRedactionRule__block_invoke_120(uint64_t a1)
{
  if (([currentRedactionRule_loggedElementNames containsObject:*(a1 + 32)] & 1) == 0)
  {
    [currentRedactionRule_loggedElementNames addObject:*(a1 + 32)];
    v2 = +[CalDAVTrafficLogScrubber log];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __39__CalXMLSanitizer_currentRedactionRule__block_invoke_120_cold_1(a1);
    }
  }
}

- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  v48 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  iCopy = i;
  nameCopy = name;
  attributesCopy = attributes;
  [(CalXMLSanitizer *)self flushContents];
  [(NSMutableArray *)self->elementNames addObject:elementCopy];
  elementNamespaces = self->elementNamespaces;
  if (iCopy)
  {
    [(NSMutableArray *)self->elementNamespaces addObject:iCopy];
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    [(NSMutableArray *)elementNamespaces addObject:null];
  }

  currentRedactionRule = [(CalXMLSanitizer *)self currentRedactionRule];
  if (!self->_currentElementHasNestedTags && self->_nestingLevel >= 1)
  {
    [(NSMutableString *)self->_xml appendString:@"\n"];
  }

  getIndentation = [(CalXMLSanitizer *)self getIndentation];
  xml = self->_xml;
  elementName = [currentRedactionRule elementName];
  if (nameCopy)
  {
    v20 = nameCopy;
  }

  else
  {
    v20 = elementCopy;
  }

  v21 = CalRedactString(elementName, v20);
  v38 = getIndentation;
  [(NSMutableString *)xml appendFormat:@"%@<%@", getIndentation, v21];

  if ([iCopy length])
  {
    v22 = [(NSMutableDictionary *)self->namespaceURIToLevelOfFirstElementInNamespace objectForKeyedSubscript:iCopy];

    if (!v22)
    {
      [(CalXMLSanitizer *)self _appendNamespaceURI:iCopy forElementName:elementCopy qualifiedName:nameCopy];
      v23 = [MEMORY[0x277CCABB0] numberWithInt:self->_nestingLevel];
      [(NSMutableDictionary *)self->namespaceURIToLevelOfFirstElementInNamespace setObject:v23 forKeyedSubscript:iCopy];
    }
  }

  v39 = nameCopy;
  v40 = iCopy;
  selfCopy = self;
  v41 = elementCopy;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v25 = attributesCopy;
  v26 = [v25 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v44;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v44 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v43 + 1) + 8 * i);
        v31 = [currentRedactionRule redactionRuleForAttribute:v30];
        v32 = selfCopy->_xml;
        v33 = CalRedactString([v31 attributeName], v30);
        attributeValue = [v31 attributeValue];
        v35 = [v25 objectForKeyedSubscript:v30];
        v36 = CalRedactString(attributeValue, v35);
        [(NSMutableString *)v32 appendFormat:@" %@=%@", v33, v36];
      }

      v27 = [v25 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v27);
  }

  *&selfCopy->_currentElementStartTagNeedsClosing = 1;
  ++selfCopy->_nestingLevel;

  v37 = *MEMORY[0x277D85DE8];
}

- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  parserCopy = parser;
  elementCopy = element;
  iCopy = i;
  nameCopy = name;
  if (*&self->_textContents != 0 || self->_mutableCDATAContents)
  {
    [(CalXMLSanitizer *)self flushContents];
  }

  currentRedactionRule = [(CalXMLSanitizer *)self currentRedactionRule];
  [(NSMutableArray *)self->elementNames removeLastObject];
  [(NSMutableArray *)self->elementNamespaces removeLastObject];
  --self->_nestingLevel;
  if (iCopy)
  {
    v14 = [(NSMutableDictionary *)self->namespaceURIToLevelOfFirstElementInNamespace objectForKeyedSubscript:iCopy];
    integerValue = [v14 integerValue];
    nestingLevel = self->_nestingLevel;

    if (integerValue == nestingLevel)
    {
      [(NSMutableDictionary *)self->namespaceURIToLevelOfFirstElementInNamespace removeObjectForKey:iCopy];
    }
  }

  xml = self->_xml;
  if (self->_currentElementStartTagNeedsClosing)
  {
    [(NSMutableString *)xml appendString:@"/>\n"];
  }

  else
  {
    if ([(NSMutableString *)xml hasSuffix:@"\n"])
    {
      v18 = self->_xml;
      getIndentation = [(CalXMLSanitizer *)self getIndentation];
      [(NSMutableString *)v18 appendString:getIndentation];
    }

    v20 = self->_xml;
    elementName = [currentRedactionRule elementName];
    if (nameCopy)
    {
      v22 = nameCopy;
    }

    else
    {
      v22 = elementCopy;
    }

    v23 = CalRedactString(elementName, v22);
    [(NSMutableString *)v20 appendFormat:@"</%@>\n", v23];
  }

  *&self->_currentElementStartTagNeedsClosing = 256;
}

- (void)_appendNamespaceURI:(id)i forElementName:(id)name qualifiedName:(id)qualifiedName
{
  iCopy = i;
  nameCopy = name;
  qualifiedNameCopy = qualifiedName;
  if (nameCopy && iCopy && qualifiedNameCopy)
  {
    v10 = [qualifiedNameCopy length];
    if (v10 > [nameCopy length] && (objc_msgSend(qualifiedNameCopy, "substringToIndex:", objc_msgSend(qualifiedNameCopy, "length") + ~objc_msgSend(nameCopy, "length")), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = v11;
      [(NSMutableString *)self->_xml appendFormat:@" xmlns:%@=%@", v11, iCopy];
    }

    else
    {
      [(NSMutableString *)self->_xml appendFormat:@" xmlns=%@", iCopy];
    }
  }
}

- (void)parser:(id)parser foundCharacters:(id)characters
{
  charactersCopy = characters;
  textContents = self->_textContents;
  v9 = charactersCopy;
  if (textContents)
  {
    v7 = [(NSString *)textContents stringByAppendingString:charactersCopy];
  }

  else
  {
    v7 = charactersCopy;
  }

  v8 = self->_textContents;
  self->_textContents = v7;
}

- (void)parser:(id)parser foundComment:(id)comment
{
  commentCopy = comment;
  [(CalXMLSanitizer *)self flushContents];
  [(NSMutableString *)self->_xml appendFormat:@"<!--%@-->", commentCopy];
}

- (void)parser:(id)parser foundCDATA:(id)a
{
  parserCopy = parser;
  aCopy = a;
  mutableCDATAContents = self->_mutableCDATAContents;
  if (self->_cdataContents)
  {
    if (!mutableCDATAContents)
    {
      v8 = [(NSData *)self->_cdataContents mutableCopy];
      v9 = self->_mutableCDATAContents;
      self->_mutableCDATAContents = v8;

      cdataContents = self->_cdataContents;
      self->_cdataContents = 0;

      v11 = self->_mutableCDATAContents;
LABEL_6:
      [(NSMutableData *)v11 appendData:aCopy];
      goto LABEL_7;
    }

LABEL_5:
    v11 = self->_mutableCDATAContents;
    goto LABEL_6;
  }

  if (mutableCDATAContents)
  {
    goto LABEL_5;
  }

  objc_storeStrong(&self->_cdataContents, a);
LABEL_7:
}

- (void)parser:(id)parser parseErrorOccurred:(id)occurred
{
  occurredCopy = occurred;
  if (objc_opt_respondsToSelector())
  {
    redactedDescription = [occurredCopy redactedDescription];
  }

  else if (occurredCopy)
  {
    v6 = MEMORY[0x277CCACA8];
    domain = [occurredCopy domain];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(occurredCopy, "code")}];
    redactedDescription = [v6 stringWithFormat:@"[%@:%@]", domain, v8];
  }

  else
  {
    redactedDescription = @"(null)";
  }

  [(NSMutableString *)self->_xml appendFormat:@"[Parse failure: XML parse error=%@]\n", redactedDescription];
}

- (void)flushContents
{
  currentRedactionRule = [(CalXMLSanitizer *)self currentRedactionRule];
  if (self->_currentElementStartTagNeedsClosing)
  {
    [(NSMutableString *)self->_xml appendString:@">"];
    self->_currentElementStartTagNeedsClosing = 0;
  }

  if (self->_textContents)
  {
    if (flushContents_onceToken != -1)
    {
      [CalXMLSanitizer flushContents];
    }

    if ([(NSString *)self->_textContents rangeOfCharacterFromSet:flushContents_notWhitespaceSet options:0]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      xml = self->_xml;
      v4 = CalRedactString([currentRedactionRule content], self->_textContents);
      [(NSMutableString *)xml appendString:v4];
    }

    textContents = self->_textContents;
    self->_textContents = 0;
  }

  mutableCDATAContents = self->_mutableCDATAContents;
  if (self->_cdataContents)
  {
    if (!mutableCDATAContents)
    {
      goto LABEL_14;
    }
  }

  else if (!mutableCDATAContents)
  {
    goto LABEL_15;
  }

  objc_storeStrong(&self->_cdataContents, mutableCDATAContents);
  v7 = self->_mutableCDATAContents;
  self->_mutableCDATAContents = 0;

LABEL_14:
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:self->_cdataContents encoding:4];
  v9 = self->_xml;
  v10 = CalRedactString([currentRedactionRule cdata], v8);
  [(NSMutableString *)v9 appendFormat:@"<![CDATA[%@]]>", v10];

  cdataContents = self->_cdataContents;
  self->_cdataContents = 0;

LABEL_15:
}

void __32__CalXMLSanitizer_flushContents__block_invoke()
{
  v2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v0 = [v2 invertedSet];
  v1 = flushContents_notWhitespaceSet;
  flushContents_notWhitespaceSet = v0;
}

void __39__CalXMLSanitizer_currentRedactionRule__block_invoke_2_cold_1(uint64_t *a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a2 + 40);
  OUTLINED_FUNCTION_2_0();
  v8 = v4;
  _os_log_debug_impl(&dword_22430B000, v5, OS_LOG_TYPE_DEBUG, "Unknown namespace: %@ for element %@", v7, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __39__CalXMLSanitizer_currentRedactionRule__block_invoke_120_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  OUTLINED_FUNCTION_2_0();
  v7 = v3;
  _os_log_debug_impl(&dword_22430B000, v4, OS_LOG_TYPE_DEBUG, "Unknown element name in namespace %@: %@", v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end